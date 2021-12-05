function [theta,J_history]=gradientDescent(x,y,theta,alpha,num_iters)
m=length(y);
J_history=zeros(num_iters,1);
for iter=1:num_iters
    theta_temp=theta;
    for j=1:length(theta)
        theta_temp(j)=theta_temp(j)-alpha/m*(x*theta-y)'*x(:,j);
    end
    theta=theta_temp;
    
    J_history=computeCost(x,y,theta);
end
end