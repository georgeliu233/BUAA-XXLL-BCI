    %[header,data] = edfread('Affaf Ikram 20121020 1839.L1.edf');
    fp_1=data(1,:);
    fp_1=resample(fp_1,100,500); %������Ƶ��Ϊ100HZ
    fc = 100;          %�������Ƶ��
    N = 30000;           %��������
    n = 0:N-1;          
    f = n*fc/N;         %Ƶ������
    %Wn = [0.5*2 4*2]/fc;%����ͨ��Ϊ0.5-4HZ Delta��   
    %Wn = [4*2 8*2]/fc;%����ͨ��Ϊ4-8HZ Theta��   
    %Wn = [8*2 13*2]/fc;%����ͨ��8-13HZ  Alpha��    
    %Wn = [13*2 32*2]/fc;%ͨ��?13-32Hz Beta��?    
    %Wn = [32*2 40*2]/fc;%ͨ��32-50Hz Gamma��
    [k,l] = butter(2,Wn);%4��IIR�˲���   
    result = filtfilt(k,l,fp_1);
    tmp = fft(result);
    fp1_Delta= ifft(tmp);
    figure,
    subplot(211),plot(f(1:N/2),abs(tmp(1:N/2)*2/N));title('�˲���Ƶ�׽��');axis([0,100,-inf,inf])
    subplot(212),plot(fp1_Delta);title('�˲��� ��ͼ��');
    SampEnVal_Gamma=SampEn(fp1_Delta, 2, 0.12);
  



