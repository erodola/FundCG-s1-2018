function save_mesh_povray(fname, M, colors)

%NOTE: colors must be a m-by-3 matrix, encoding one color per TRIANGLE

% Compute normals for each vertex

normals_tri = cross(...
    M.VERT(M.TRIV(:,3),:) - M.VERT(M.TRIV(:,1),:), ...
    M.VERT(M.TRIV(:,2),:) - M.VERT(M.TRIV(:,1),:));
normals_tri = spdiag(1./sqrt(sum(normals_tri.^2,2)))*normals_tri;

P = sparse(M.TRIV(:)', [1:M.m 1:M.m 1:M.m], 1, M.n, M.m);
P = spdiag(1./sum(P,2))*P;

normals = -P*normals_tri;
normals = spdiag(1./sqrt(sum(normals.^2,2)))*normals;

% Write the mesh to file

fid = fopen(fname, 'w');

n = size(M.VERT,1);
m = size(M.TRIV,1);

fprintf(fid, '%d,%d,', n, m);

X = M.VERT;
X(isnan(X(:,1)),:) = 0;
fprintf(fid, '%.4f,%.4f,%.4f,', X');

X = normals;
X(isnan(X(:,1)),:) = 0;
fprintf(fid, '%.4f,%.4f,%.4f,', X');

fprintf(fid, '%d,%d,%d,', (M.TRIV-1)');

fprintf(fid, '%.4f,%.4f,%.4f,', colors');

fclose(fid);

end

function D = spdiag(d)
n = length(d);
D = sparse(1:n, 1:n, d);
end
