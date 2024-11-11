%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EC 503 Learning from Data
% Final Project
% by 
% kNN Implementation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Load Dataset(s) and separate train and test data

load();

% features
X = ;

% labels
Y = ;

% Split data into train and test
X_train = ;
Y_train = ;

X_test = ;
Y_test = ;

% initialize (test different k values)
k = 3;

%% Perform kNN

Model = fitcknn(X_train, Y_train, 'NumNeighbors', k);

% predict the labels
Y_hat = predict(Model, X_test);

%% Calculate accuracy
accuracy = sum(strcmp(Y_hat, Y_test))/numel(Y_test) * 100;

conf_mat = confusionmat(Y_hat, Y_test);