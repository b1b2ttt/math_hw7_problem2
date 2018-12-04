function mean_row_norm = rownorm(mat)
row_num = size(mat ,1);
mean_row_norm = sum (sum(mat ,2))/row_num - 1.0;
end