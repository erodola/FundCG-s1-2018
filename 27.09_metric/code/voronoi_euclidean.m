function f = voronoi_euclidean( V, S )

[~,f] = min(pdist2(V,V(S,:)), [], 2);

end
