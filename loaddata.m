#loading data

filename = 'wdbc_data.txt';
delimiterIn = ',';
A = importdata(filename,delimiterIn,0);

X=A.data(1:400,3:end);
Xtest=A.data(401:end,3:end);
X=[ones(size(X,1),1) X];
Xtest=[ones(size(Xtest,1),1) Xtest];

m=size(X,1); #Total dataset=569
             #Taking training set=400, Test set=169
             

y=zeros(400,1);
ytest=zeros(169,1);
tempy=zeros(m,1);

patientids=A.data(1:400,1);
patientidstest=A.data(401:end,1);

for i=1:569
  if A.textdata{i,1}=='M'
    tempy(i)=1;
  elseif A.textdata{i,1}=='B'
    tempy(i)=0;
  end
endfor

y=tempy(1:400,1);
ytest=tempy(401:end,1);