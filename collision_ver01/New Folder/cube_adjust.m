function [V,VP]=cube_adjust(a1,b1,c1,a2,b2,c2)

V1 = [a1*[-1;  1; 1; -1;]; a2*[-1;  1; 1; -1;]];
V2 = [b1*[-1; -1; 1;  1;]; b2*[-1; -1; 1;  1;]];
V3 = [c1*[-1; -1;-1; -1;]; c2*[ 1;  1; 1;  1;]];

% [THETA,PHI,R] = cart2sph(V1,V2,V3);
% R = r.*ones(size(V1(:,1)));
% [V1,V2,V3] = sph2cart(THETA,PHI,R);
V = [V1 V2 V3];

% for plolting %
% sequence 1 2 3 4 1 5 6 7 8 5 2 6 3 7 4 8 1

VP = [V(1,:) ; V(2,:); V(3,:); V(4,:); V(1,:); V(5,:);  V(6,:); V(7,:); V(8,:); V(5,:); 
    V(2,:);V(6,:); V(3,:); V(7,:); V(4,:);V(8,:);V(1,:);];



