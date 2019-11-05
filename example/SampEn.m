
function SampEnVal = SampEn(data, m, r)
% SAMPEN  ����ʱ������data��������
% ���룺data��Ҫ������һά��������dataΪ������������,��ռ��ع���ʱ���ӳ�Ĭ��Ϊ1��
%       m�ع�ά����һ��ѡ��1��2������ѡ��2��һ�㲻ȡm>2
%       r ��ֵ��С��һ��ѡ��r=0.1~0.25*Std(data)
% �����SampEnVal������ֵ��С
% $Author: lskyp
% �޸ģ�yuhansgg
% $Date:   2018.03.05
% Orig Version: V1.0--------�ֿ����㳤��Ϊm�����кͳ���Ϊm+1������
%                           ��һ��ļ�����Щ���⣬��Ҫע����������������ҪΪN-m
% Modi Version: V1.1--------�ۺϼ��㣬�������ʱͨ�����������ɣ�������ѭ��
% V1.1 Modified date: 2018.03.05
% �����ع�ʽ�ο����ģ���A review on sample entropy applications for the non-invasive analysis of atrial fibrillation electrocardiograms��

data = data(:)';
N = length(data);
Nkx1 = 0;
Nkx2 = 0;

% �ֶμ�����룬x1Ϊ����Ϊm�����У�x2Ϊ����Ϊm+1������

for k = N - m:-1:1
    x1(k, :) = data(k:k + m - 1);
    x2(k, :) = data(k:k + m);
end

for k = N - m:-1:1
    % x1���м���
    % ͳ�ƾ��룬����ÿ�ж�Ҫ������������������˿����Ƚ����и���ΪN-m�ľ���Ȼ��
    % ��ԭʼx1���������������Ա�������ѭ��������Ч��
    x1temprow = x1(k, :);
    x1temp    = ones(N - m, 1)*x1temprow;
    
    % ����ʹ��repmat��������������䣬��
    % x1temp = repmat(x1temprow, N - m, 1);
    % ����Ч�ʲ�������ľ���˷�
    % ������룬ÿһ��Ԫ����������ֵΪ����
    dx1(k, :) = max(abs(x1temp - x1), [], 2)';
    
    % ģ��ƥ����
    Nkx1 = Nkx1 + (sum(dx1(k, :) < r) - 1)/(N - m - 1);  %% N-m+1 ������
    
    % x2���м��㣬��x1ͬ������
    x2temprow = x2(k, :);
    x2temp    = ones(N - m, 1)*x2temprow;
    dx2(k, :) = max(abs(x2temp - x2), [], 2)';
    Nkx2      = Nkx2 + (sum(dx2(k, :) < r) - 1)/(N - m - 1);
end

% ƽ��ֵ
Bmx1 = Nkx1/(N - m);
Bmx2 = Nkx2/(N - m);

% ������
SampEnVal = -log(Bmx2/Bmx1);

end
