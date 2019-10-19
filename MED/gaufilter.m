function [ y ] = gaufilter( x, n, sigma )
%对输入序列x进行高斯滤波
%x：输入序列,n滤波模板长度，sigma为标准差
%y：返回序列
gau = fspecial('gaussian',[1,n],sigma);  %高斯函数一维模板
y = conv(x, gau);
y = y(1:length(y)-length(gau)+1);
end

