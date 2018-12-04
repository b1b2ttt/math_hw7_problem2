function V = assbreg(A)
N = size(A,1);
W = ones(N)/N;
V = W;
alpha = 1;
l2thr = 0.001;
permthr = 0.5;
p = permnorm(V);
energy = trace(A'*V);
while p > permthr
	V = W.*exp(alpha*A);
    sinkhorn_val = 0;
	while rownorm(V) > l2thr,
		V = rowcol(V);
        sinkhorn_val = sinkhorn_val + 1;
	end
  	W = V;
	energy = trace(A'*V);
    p = permnorm(V);
end
