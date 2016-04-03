function [ wpAngles, wpAnglesDeg ] = procWPAnglesPar( wp )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

parfor i = 1:1:size(wp,1)
    %Wirepot Set 1
    wp1cDist = 4;                                                                            %Dist b/t WPs CTC.
    wp1Angles1(i,1) = acos((wp(i,2)^2 - wp(i,1)^2 - wp1cDist^2)/(-2*wp(i,1)*wp1cDist));       %Alpha
    wp1Angles2(i,1) = acos((wp(i,1)^2 - wp(i,2)^2 - wp1cDist^2)/(-2*wp(i,2)*wp1cDist));       %Beta
    wp1Angles3(i,1) = acos((wp1cDist^2 - wp(i,2)^2 - wp(i,1)^2)/(-2*wp(i,2)*wp(i,1)));        %Gamma
    
    %Wirepot Set 2
    wp2cDist = 4;                                                                            %Dist b/t WPs CTC.
    wp2Angles1(i,1) = acos((wp(i,4)^2 - wp(i,3)^2 - wp2cDist^2)/(-2*wp(i,3)*wp2cDist));       %Alpha
    wp2Angles2(i,1) = acos((wp(i,3)^2 - wp(i,4)^2 - wp2cDist^2)/(-2*wp(i,4)*wp2cDist));       %Beta
    wp2Angles3(i,1) = acos((wp2cDist^2 - wp(i,4)^2 - wp(i,3)^2)/(-2*wp(i,4)*wp(i,3)));        %Gamma
    
    %Wirepot Set 3
    %Note that name of wirepots is the grouping followed by the wirepot's
    %number in the group from right to left with the cylinder pointed upward.
    %For ST1, wirepot 3 sat at the bottom of the beam and was turned upside
    %due to clearance requiring an inversion of naming here.
    wp3cDist = 4;                                                                            %Dist b/t WPs CTC.
    wp3Angles1(i,1) = acos((wp(i,5)^2 - wp(i,6)^2 - wp3cDist^2)/(-2*wp(i,6)*wp3cDist));       %Alpha
    wp3Angles2(i,1) = acos((wp(i,6)^2 - wp(i,5)^2 - wp3cDist^2)/(-2*wp(i,5)*wp3cDist));       %Beta
    wp3Angles3(i,1) = acos((wp3cDist^2 - wp(i,5)^2 - wp(i,6)^2)/(-2*wp(i,5)*wp(i,6)));        %Gamma
    
    %Wirepot Set 4
    %Same change as wirepot set 3.
    wp4cDist = 4;                                                                            %Dist b/t WPs CTC.
    wp4Angles1(i,1) = acos((wp(i,7)^2 - wp(i,8)^2 - wp4cDist^2)/(-2*wp(i,8)*wp4cDist));       %Alpha
    wp4Angles2(i,1) = acos((wp(i,8)^2 - wp(i,7)^2 - wp4cDist^2)/(-2*wp(i,7)*wp4cDist));       %Beta
    wp4Angles3(i,1) = acos((wp4cDist^2 - wp(i,7)^2 - wp(i,8)^2)/(-2*wp(i,7)*wp(i,8)));        %Gamma
end

wpAngles(:,:) = [wp1Angles1(:,1) wp1Angles2(:,1) wp1Angles3(:,1) wp2Angles1(:,1) wp2Angles2(:,1) wp2Angles3(:,1) wp3Angles1(:,1) wp3Angles2(:,1) wp3Angles3(:,1) wp4Angles1(:,1) wp4Angles2(:,1) wp4Angles3(:,1)];
wpAnglesDeg(:,:) = (180/pi)*[wp1Angles1(:,1) wp1Angles2(:,1) wp1Angles3(:,1) wp2Angles1(:,1) wp2Angles2(:,1) wp2Angles3(:,1) wp3Angles1(:,1) wp3Angles2(:,1) wp3Angles3(:,1) wp4Angles1(:,1) wp4Angles2(:,1) wp4Angles3(:,1)];
end

