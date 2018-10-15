%%
clear all
close all
clc

M = load_off('./cat2.off');

M.VERT = M.VERT - mean(M.VERT);

f = M.VERT(:,1);
f = mean(f(M.TRIV), 2);

colors = jet(256);
idx = 1 + round(255 * (f-min(f)) ./ range(f));

save_mesh_povray('./cat2.mesh', M, colors(idx,:))
