function pnorm = permnorm(mat)
N = size(mat ,1);
mat = mat'*mat - eye(N) ;
pnorm = sqrt( trace(mat'*mat)/ N) ;
end