    %[header,data] = edfread('Affaf Ikram 20121020 1839.L1.edf');
    fp_1=data(1,:);
    fp_1=resample(fp_1,100,500); %降采样频率为100HZ
    fc = 100;          %定义采样频率
    N = 30000;           %采样点数
    n = 0:N-1;          
    f = n*fc/N;         %频率序列
    %Wn = [0.5*2 4*2]/fc;%设置通带为0.5-4HZ Delta波   
    %Wn = [4*2 8*2]/fc;%设置通带为4-8HZ Theta波   
    %Wn = [8*2 13*2]/fc;%设置通带8-13HZ  Alpha波    
    %Wn = [13*2 32*2]/fc;%通带?13-32Hz Beta波?    
    %Wn = [32*2 40*2]/fc;%通带32-50Hz Gamma波
    [k,l] = butter(2,Wn);%4阶IIR滤波器   
    result = filtfilt(k,l,fp_1);
    tmp = fft(result);
    fp1_Delta= ifft(tmp);
    figure,
    subplot(211),plot(f(1:N/2),abs(tmp(1:N/2)*2/N));title('滤波后频谱结果');axis([0,100,-inf,inf])
    subplot(212),plot(fp1_Delta);title('滤波后 波图像');
    SampEnVal_Gamma=SampEn(fp1_Delta, 2, 0.12);
  



