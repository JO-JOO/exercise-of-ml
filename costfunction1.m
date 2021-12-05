function [jval,gradient]=costfunction(theta)
    X=[1 2 3;4 5 6;7 8 9];
    Y=[100;300;800];
    jval1=(X*theta-Y).^2;
    jval2=(X*theta-Y);
    jval=(1/(2*length(theta)))*sum(jval1);
    gradient=X'*jval2;