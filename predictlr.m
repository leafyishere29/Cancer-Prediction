function p = predictlr(X, theta)

m = size(X, 1); 

p = zeros(m, 1);

for i=1:m
  if sigmoid(X(i,:)*theta)>=0.5
    p(i)=1;
  else
    p(i)=0;
  end 
endfor