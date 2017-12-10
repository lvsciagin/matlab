%P15/1726/2016
%AGIN ELVIS

x0= 0; y0=0;
x1= 4; y1=4;

% abs(X) returns the absolute value of each calculation.

dx = abs(x1-x0); 
dy = abs(y1-y0);

%Y = sign(x) returns an array Y the same size as x, where each element of Y is:
%1 if the corresponding element of x is greater than 0.
%0 if the corresponding element of x equals 0.
%-1 if the corresponding element of x is less than 0.

sx = sign(x1-x0);
sy = sign(y1-y0);
if (dy > dx)
    step = dy;
else 
    step = dx;
end
x(1) = x0; y(1) = y0; j = 1;
for i= 0:1:step
    if (x1 == x)&(y1 == y)
        break;
    end
    j = j+1;
    x(j) = x(j-1) + (dx/step)*sx;
    y(j) = y(j-1) + (dy/step)*sy;  
end

%rounds each element of X to the nearest integer.

plot(round(x),round(y),'rs');
fill (x,y,'c')
grid on ,hold on
axis([-10 10 -10 10]);

plot(x,y,'b^');
%axis([point(1)-2 point(3)+2 point(2)-2 point(4)+2]);