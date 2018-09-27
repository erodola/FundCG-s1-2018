function save_as_off(fname, M)

m = size(M.TRIV,1);
n = size(M.VERT,1);

fid = fopen(fname,'w');

fprintf(fid,'OFF\n');
fprintf(fid,'%d %d %d\n',n,m,0);

for i=1:n
    fprintf(fid,'%.5f %.5f %.5f\n', M.VERT(i,1), M.VERT(i,2), M.VERT(i,3));
end

for i=1:m
    fprintf(fid,'3 %d %d %d\n', M.TRIV(i,1)-1, M.TRIV(i,2)-1, M.TRIV(i,3)-1);
end

fclose(fid);

end
