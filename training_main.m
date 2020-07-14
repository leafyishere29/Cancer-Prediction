#main file
clc;
#Running load data file
printf('Loading Data....\n\n');
loaddata;
printf('Data Loaded\n');

initial_theta=zeros(size(X,2),1);

#plot_cost(X, y);

printf('Training the Parameters....\n\n');
options = optimset('GradObj', 'on', 'MaxIter', 100);
[theta, cost] = fminunc(@(t)(costfunction(X, y, t)), initial_theta, options);
printf('Parameters are trained!\n\n');

#Now we have the optimal value of theta and we can test it on test set for its accuracy
printf('Threshhold Value for Malignant is set at 50 percent... \n\n');

p = predictlr(X, theta);
fprintf('Train Accuracy on the Training Set: %f\n', mean(double(p == y)) * 100);

p = predictlr(Xtest, theta);
fprintf('Train Accuracy on the Test Set: %f\n', mean(double(p == ytest)) * 100);

fprintf('\nValue of theta (Parameters)-->\n\n');
theta
