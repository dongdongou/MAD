function [ mu, sigma2 ] = norParaEstmt( x )
%�����������̬�ֲ�����x�ľ�ֵmu���ͷ���sigma2
%x���������̬����
%mu��x�ľ�ֵ�� sigma2��x�ı�׼��
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

