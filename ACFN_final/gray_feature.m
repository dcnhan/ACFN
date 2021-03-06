%
%  Attentional Correlation Filter Network for Adaptive Visual Tracking
%
%  Jongwon Choi, 2017
%  https://sites.google.com/site/jwchoivision/  
% 
%  MATLAB code for correlation filter network
%  When you use this code for your research, please refer the below references.
%  You can't use this code for any commercial purpose without author's
%  agreement.
%  If you have any question or comment, please contact to
%  jwchoi.pil@gmail.com.
%  
% 
%
%  Reference:
%  [1] J. Choi, et al., "Attentional Correlation Filter Network for Adaptive Visual Tracking", CVPR2017
%  [2] J. Choi, et al., "Visual Tracking Using Attention-Modulated Disintegration and Integration", CVPR2016



function output = gray_feature(input)

dx = zeros(size(input));
dy = zeros(size(input));
dx(2:end-1,:) = - input(2:end-1,:)*2 + input(1:end-2,:) + input(3:end,:);
dy(:,2:end-1) = - input(:,2:end-1)*2 + input(:,1:end-2) + input(:,3:end);
output = cat(3, input, dx, dy);
