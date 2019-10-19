function [ y ] = medfilter( x, n )
%对输入序列x进行中值滤波
%x：输入序列,n滤波模板长度
%y：返回序列
y = medfilt1(x,n);
end

