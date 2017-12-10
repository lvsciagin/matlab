x = [1 4 3 1];
y = [1 1 4 1];
shape= [x;y];
fill (x,y,'y' )
axis([-10 10 -10 10]);
hold on;
plot (x,y)
rmatrix = [0, -1, 0; 1, 0, 0; 0, 0, 1];
shape(3,:)=ones();
answer = (rmatrix*shape);
plot (answer(1,:),answer(2,:))
