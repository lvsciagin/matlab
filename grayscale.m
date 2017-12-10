
%A=imread('test.jpg')


%read image in RGB  matrix
RGB = imread('test.png')
imshow(RGB)

%convert to grayscale and display
agin= rgb2gray(RGB) % converts the truecolor image RGB to the grayscale intensity image 'agin'
imshow (agin)