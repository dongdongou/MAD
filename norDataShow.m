function [  ] = norDataShow( x )
%绘制正态数据x的概率密度图
%x：输入的正态序列
len = length(x);
max_data = max(x);
min_data = min(x);
x_label_num = 100;
x_label = linspace(min_data,max_data,x_label_num);
step_label = (max_data-min_data)/x_label_num;
pro = zeros(1,x_label_num);
for i=1:x_label_num
    num = 0;
    for j=1:len
        if x(j)>=(min_data+(i-1)*step_label)&&x(j)<(min_data+i*step_label)
            num = num + 1;
        end
    end
    pro(i) = num;
end
pro = pro / len;
bar(x_label,pro,'g');

end

