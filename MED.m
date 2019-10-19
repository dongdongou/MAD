%产生正态分布数据
num_data = 1000                             %数据个数
nor_data = normrnd(0.07,0.002,1,num_data);  %产生的正态数据
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
t = linspace(-5,5,51);
y = (sin(t.*pi)./(t.*pi))/100;
noise_data = nor_data;
for i=1:51
    noise_data(num_data/2-25+i) = noise_data(num_data/2-25+i)+y(i);
end

subplot(2,1,1);
plot(x,noise_data);
subplot(2,1,2);
plot(linspace(1,num_filter_data,num_filter_data),I);

