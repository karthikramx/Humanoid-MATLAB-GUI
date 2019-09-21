function [V,VP]=cubeshape(a,b,c,r)

V1 = a*[-1;  1; 1; -1;-1;  1; 1; -1;];
V2 = b*[-1; -1; 1;  1;-1; -1; 1;  1;];
V3 = c*[-1; -1;-1; -1; 1;  1; 1;  1;];

V = [V1 V2 V3];

VP = [V(1,:) ; V(2,:); V(3,:); V(4,:); V(1,:); V(5,:); V(6,:); V(7,:); V(8,:); V(5,:);V(6,:);V(2,:); V(3,:); V(7,:); V(8,:);V(4,:)];
end

