function [ mu, sigma2 ] = norParaEstmt( x )
%估计输入的正态分布数据x的均值mu，和方差sigma2
%x：输入的正态序列
%mu：x的均值； sigma2：x的标准差
len = length(x);
sum = 0;
sum2 = 0;
for i=1:len
    sum = sum + x(i);
end
mu = sum / len;
for i=1:len
    sum2 = sum2 + (x(i)-mu)^2;
end
sigma2 = sum2 / len;

end

