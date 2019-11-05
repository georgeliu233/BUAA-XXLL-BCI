
%将Alpha波图像动态画出来
gif_data = fp1_Delta;
t = 1:1:30000;
xlabel('X轴');
ylabel('Y轴');
%四周的边框
box on;
h = plot(0,0);
axis([0,30000,-100,100]);
pause(10)
for i = 1:length(t)/200
   set(h,'xdata',t(1:i*200),'ydata',gif_data(1:i*200))
   pause(0.05);

end