function [X_norm, mu, sigma] = featureNormalize(X, j)

%  NOTE:   THIS FILE IS a variation of the featureNormalize function, 
%          which allows the caller to specify which column of the input data
%          to normalize.   This allows the calling program to avoid 
%          normalizing columns which are binary switches showing which class 
%          of a particular classified feature (such as "gender")
%          the data point belongs to

%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

X

%for feature_num = 1:size(X,2)
for feature_num = j
	mu(1, feature_num) = mean(X(:,feature_num));
	sigma(1, feature_num) = std(X(:,feature_num));
	X_norm(:, feature_num) = X_norm(:, feature_num) .- mu(1, feature_num);
	X_norm(:, feature_num) = X_norm(:, feature_num) ./ sigma(1, feature_num);
end
 % mu
 % sigma
 % X_norm





% ============================================================

end
