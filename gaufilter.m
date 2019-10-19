function [ y ] = gaufilter( x, n, sigma )
%����������x���и�˹�˲�
%x����������,n�˲�ģ�峤�ȣ�sigmaΪ��׼��
%y����������
gau = fspecial('gaussian',[1,n],sigma);  %��˹����һάģ��
y = conv(x, gau);
y = y(1:length(y)-length(gau)+1);
end

