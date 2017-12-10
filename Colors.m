for k = 1:16
 plot(fft(eye(k+16)))
 axis([-1 1 -1 1])
 M(k) = getframe;
end
figure
movie(M,5)
figure
u = uicontrol('Style','slider','Position',[10 50 20 340],...
    'Min',1,'Max',16,'Value',1);
for k = 1:16
    plot(fft(eye(k+16)))
    axis([-1 1 -1 1])
    u.Value = k;
    M(k) = getframe(gcf);
end
figure
axes('Position',[0 0 1 1])
movie(M,5)