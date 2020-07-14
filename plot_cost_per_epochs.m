#Ploting cost at every iteration
1;
function plot_cost(X, y)

c=zeros(100,1);

for i=1:100
  initial_theta=zeros(size(X,2),1);
  options = optimset('GradObj', 'on', 'MaxIter', i);
  [theta, cost] = fminunc(@(t)(costfunction(X, y, t)), initial_theta, options);
  c(i)=cost;
  i++;
endfor


plot(c);
xlabel('Iterations');
ylabel('Cost');
title('Ploting cost at every iteration');



endfunction