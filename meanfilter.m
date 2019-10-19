function [ y ] = meanfilter( x, n )
%对输入序列x进行均值滤波
%x：输入序列,n滤波模板长度
%y：返回序列
%mean = ones(1,n); %mean为1xn的模板，各组元素的值均为1/n
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

