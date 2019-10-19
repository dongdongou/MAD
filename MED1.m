%产生正态分布数据
num_data = 1000;                             %数据个数
t = linspace(-5,5,num_data);
%signal = sin(pi*t)./(pi*t);
signal = zeros(1,num_data);
for i=(num_data/2-50):(num_data/2+50)
    signal(i)=1;
end
nor_data = awgn(signal,-5);
x = linspace(1,num_data,num_data);          %x轴
%plot(x,nor_data);
L = 20;                                     %滤波器窗口大小
num_filter_data = num_data - L + 1;
I = zeros(1,num_filter_data);  
for i=1:num_filter_data
    for j=i:i+L-1
        I(i) =I(i)+ (-(nor_data(j)*0.01*log(nor_data(j)*0.01)));
    end
end

subplot(3,1,1);
plot(x,nor_data);
hold on
plot(x,signal,'r');
subplot(3,1,2);
plot(linspace(1,num_filter_data,num_filter_data),I);
meanfltdat = meanfilter(I,20);
subplot(3,1,3);
plot(linspace(1,num_filter_data,num_filter_data),meanfltdat);