function [ alpha beta gamma ] = lawOfCos( dist )
%UNTITLED2 Law of cosines function
% Uses law of cosines to determine angles of triangles formed using
% wirepots. 
% Input: Array of a, b, and c side lengths (see diagram below.) 
% Output: alpha, beta, gamma angles of triangle. See diagram below.
%
% Note that name of wirepots is the grouping followed by the wirepot's
% number in the group from right to left with the cylinder pointed upward.
%
%                          C
%                         /\
%                        / ?\
%                     b /    \ a
%                      /      \
%                     /        \
%                  A /_?______ß_\ B
%                          c

alpha = acos((dist(2)^2 + dist(3)^2 - dist(a)^2)/(2*dist(2)*dist(3)));
beta  = acos((dist(1)^2 + dist(3)^2 - dist(2)^2)/(2*dist(1)*dist(3)));
gamma = acos((dist(1)^2 + dist(2)^2 - dist(3)^2)/(2*dist(1)*dist(2)));

end

