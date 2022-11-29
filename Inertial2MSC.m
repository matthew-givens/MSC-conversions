function y = Inertial2MSC(x)

x1_2 = x(1)^2;
x2_2 = x(2)^2;
x3_2 = x(3)^2;

y = [atan2(x(3),sqrt(x1_2+x2_2));
    (x(6)*(x1_2+x2_2)-x(3)*(x(1)*x(4)+x(2)*x(5)))/((x1_2+x2_2+x3_2)*sqrt(x1_2+x2_2));
    atan2(x(2),x(1));
    (x(1)*x(5)-x(2)*x(4))/(sqrt(x1_2+x2_2+x3_2)*sqrt(x1_2+x2_2));
    (x(1)*x(4)+x(2)*x(5)+x(3)*x(6))/(x1_2+x2_2+x3_2);
    1/sqrt(x1_2+x2_2+x3_2)];
% y = [asin(x(3)/norm(x(:,1)));
%     (x(6)*(x1_2+x2_2)-x(3)*(x(1)*x(4)+x(2)*x(5)))/((x1_2+x2_2+x3_2)*sqrt(x1_2+x2_2));
%     atan2(x(2),x(1));
%     (x(1)*x(5)-x(2)*x(4))/(sqrt(x1_2+x2_2+x3_2)*sqrt(x1_2+x2_2));
%     (x(1)*x(4)+x(2)*x(5)+x(3)*x(6))/(x1_2+x2_2+x3_2);
%     1/sqrt(x1_2+x2_2+x3_2)];

end