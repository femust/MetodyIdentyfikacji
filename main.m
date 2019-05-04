%% 
clear all;
close all
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PARAMETERS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
estimationIndex = 2;
predictiveindex = 20000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data = load('dane10sec.mat');

trainingEstimatedIndexes(1:estimationIndex:size(data.dane10sec)) = true;
testEstimatedIndexes = true(size(trainingEstimatedIndexes));
testEstimatedIndexes(trainingEstimatedIndexes) = false;
estimation_data_training = data.dane10sec(trainingEstimatedIndexes,:);
estimation_data_test= data.dane10sec(testEstimatedIndexes,:);

predictive_data_training = data.dane10sec(1:predictiveindex,:);
predictive_data_test = data.dane10sec(predictiveindex+1:end,:);
%% 
