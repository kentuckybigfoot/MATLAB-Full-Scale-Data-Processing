function [ wpAngles, wpAnglesDeg ] = procWPAnglesPar( wp )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

parfor i = 1:1:size(wp,1)
    %Wirepot Set 1
    wp1cDist = sqrt(wp(50,7)^2 + wp(50,1)^2); %Dist b/t WPs CTC.
    %[wp1Angles1(i,1) wp1Angles2(i,1) wp1Angles3(i,1)] = lawOfCos([wp(i,1) wp(i,2) wp1cDist]);
    [wp1Angles1(i,1) wp1Angles2(i,1) wp1Angles3(i,1)] = lawOfCos([wp(i,7) wp(i,1) wp1cDist]);
    
    %Wirepot Set 2
    wp2cDist = sqrt(wp(50,2)^2 + wp(50,8)^2); %Dist b/t WPs CTC.
    %[wp2Angles1(i,1) wp2Angles2(i,1) wp2Angles3(i,1)] = lawOfCos([wp(i,3) wp(i,4) wp2cDist]);
    [wp2Angles1(i,1) wp2Angles2(i,1) wp2Angles3(i,1)] = lawOfCos([wp(i,2) wp(i,8) wp2cDist]);
    
    %Wirepot Set 3
    %Note that name of wirepots is the grouping followed by the wirepot's
    %number in the group from right to left with the cylinder pointed upward.
    %For ST1, wirepot 3 sat at the bottom of the beam and was turned upside
    %due to clearance requiring an inversion of naming here.
    wp3cDist = sqrt(wp(50,6)^2 + wp(50,5)^2); %Dist b/t WPs CTC.
    %[wp3Angles1(i,1) wp3Angles2(i,1) wp3Angles3(i,1)] = lawOfCos([wp(i,5) wp(i,6) wp3cDist]);
    [wp3Angles1(i,1) wp3Angles2(i,1) wp3Angles3(i,1)] = lawOfCos([wp(i,6) wp(i,5) wp3cDist]);
    
    %Wirepot Set 4
    %Same change as wirepot set 3.
    wp4cDist = sqrt(wp(50,7)^2 + wp(50,1)^2); %Dist b/t WPs CTC.
    %[wp4Angles1(i,1) wp4Angles2(i,1) wp4Angles3(i,1)]  = lawOfCos([wp(i,7) wp(i,8) wp4cDist]);
    [wp4Angles1(i,1) wp4Angles2(i,12) wp4Angles3(i,9)]  = lawOfCos([wp(i,12) wp(i,9) wp4cDist]);
end

wpAngles(:,:) = [wp1Angles1(:,1) wp1Angles2(:,1) wp1Angles3(:,1) wp2Angles1(:,1) wp2Angles2(:,1) wp2Angles3(:,1) wp3Angles1(:,1) wp3Angles2(:,1) wp3Angles3(:,1) wp4Angles1(:,1) wp4Angles2(:,1) wp4Angles3(:,1)];
wpAnglesDeg(:,:) = (180/pi)*[wp1Angles1(:,1) wp1Angles2(:,1) wp1Angles3(:,1) wp2Angles1(:,1) wp2Angles2(:,1) wp2Angles3(:,1) wp3Angles1(:,1) wp3Angles2(:,1) wp3Angles3(:,1) wp4Angles1(:,1) wp4Angles2(:,1) wp4Angles3(:,1)];
end

