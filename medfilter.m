function [ y ] = medfilter( x, n )
%����������x������ֵ�˲�
%x����������,n�˲�ģ�峤��
%y����������
y = medfilt1(x,n);
end

