function [J gr]=costfunction(X, y, theta)
  
m=size(X,1);

hx=sigmoid(X*theta);

J= (-(y')*log(hx)-(1-y)'*log(1-hx))/m;  

gr=zeros(size(theta));

for i=1:size(theta,1)
  gr(i)=(hx-y)'*X(:,i)/m;
endfor  
  
  
endfunction
