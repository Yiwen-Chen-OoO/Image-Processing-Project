%% ECES435 Assignment 2
% Yiwen Chen | Yumeng Yang
% 
%% Part I Comression on Images
close all; clear all; clc;
format compact;

PATH = 'peppers.tif';
Q=[90 70 50 30 10];
for i=1:length(Q)
    figure(i);
    [peaksnr] = ImgCompress(PATH,Q(i));
end

PATH2 = 'baboon.tif';
for i=1:length(Q)
    figure(i+5);
    [peaksnr] = ImgCompress(PATH2,Q(i));
end

