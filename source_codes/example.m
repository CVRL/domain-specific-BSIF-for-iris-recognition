% Supplementary material for the paper:
% Adam Czajka, Daniel Moreira, Kevin W. Bowyer, Patrick J. Flynn, 
% "Domain-Specific Human-Inspired Binarized Statistical Image Features for 
% Iris Recognition," WACV 2019, Hawaii, 2019
% 
% Pre-print available at: https://arxiv.org/abs/1807.05248
% 
% Please follow the instructions at https://cvrl.nd.edu/projects/data/ 
% to get a copy of the test database.
%
% This example code demonstrates how to calculate and match binary iris 
% codes using domain-specific filters. One can easily replace 
% domain-specific filters with standard BSIF filters, if needed. In this 
% example we use an example filter set derived from eyetracker-based iris 
% image patches.

clear all

%% Load the selected domain-specific filter set
l = 15;     % size of the filer
n = 7;      % number of kernels in a set
filters = ['../iris_sourced_filters/new_bsif_filters_based_on_eyetracker_data/ICAtextureFilters_' num2str(l) 'x' num2str(l) '_' num2str(n) 'bit.mat'];
load(filters);

%% Load iris normalized images and the corresponding masks, and extract the binary codes
for i=1:3
    im = imread(['./samples/iris' num2str(i) '.bmp']);
    codes(:,:,:,i) = extractCode(im,ICAtextureFilters);
    masks(:,:,i) = imread(['./samples/mask' num2str(i) '.bmp']);
end
    
%% Calculate comparison scores

% Genuine:
scoreG = matchCodes(codes(:,:,:,1),codes(:,:,:,2),masks(:,:,1),masks(:,:,2),l);
disp(['genuine comparison score = ' num2str(scoreG)])

% Impostor:
scoreI = matchCodes(codes(:,:,:,2),codes(:,:,:,3),masks(:,:,2),masks(:,:,3),l);
disp(['impostor comparison score = ' num2str(scoreI)])