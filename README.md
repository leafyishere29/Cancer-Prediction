# Predicting-Type-of-tumor-in-cancer-patients-using-ML

Description:

This project consists of the analysis and use of Breast Cancer Wisconsin (Diagnostic) Data Set to predict the type of tumour in patients.

Dataset and various information are provided on:
http://archive.ics.uci.edu/ml/datasets/breast+cancer+wisconsin+%28diagnostic%29

The tumour is either malignant or benign. Hence this is a binary classification problem.  
I’ve used logistic regression to define and train the model, on MATLAB/GNU OCTAVE.
The data set consists of 569 records and 30 features. The description of each feature is given in wdbc_info.
1st column of data set are the patient ids (not a feature) and the 2nd column consists of the type of tumour (B/M), where B=0 and M=1.

Files and their description:
1.	training_main.m : Consists of the main code to train the model and its analysis.
2.	loaddata.m : Consists of the code to load the data and divide it into train and test data.
3.	costfunction.m : Consists of the function to calculate the cost and gradient.
4.	predictlr.m : Consists of the function to predict based on trained parameters.
5.	sigmoid.m : Consists of the sigmoid function.
6.	plot_cost_per_epochs.m : Consists of the function to plot the progress of the fminunc function and is saved in training_progress_plot.jpg.
7.	wdbc_data : Consists of the data.
8.	wdbc_info : Consists of the various information about the data set.
