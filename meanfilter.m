function [ y ] = meanfilter( x, n )
%����������x���о�ֵ�˲�
%x����������,n�˲�ģ�峤��
%y����������
%mean = ones(1,n); %meanΪ1xn��ģ�壬����Ԫ�ص�ֵ��Ϊ1/n
%y = conv(x, mean);
%y = y(1:length(y)-length(mean)+1);
len = length(x);
y = zeros(1,length(x));
for i=1:len-n+1
    sum = 0;
    for j=i:i+n-1
        sum = sum + x(j);
    end
    y(i) = sum / n;
end
for i=len-n+2:len
    y(i) = x(len-n+1);
end
end

