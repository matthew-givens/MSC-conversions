function x = MSC2Cart(y)

u4 = y(5)*cos(y(1))*cos(y(3)) - y(2)*sin(y(1))*cos(y(3)) - y(4)*sin(y(3));
u5 = y(5)*cos(y(1))*sin(y(3)) - y(2)*sin(y(1))*sin(y(3)) + y(4)*cos(y(3));

x = 1/(y(6))*[cos(y(1))*cos(y(3));
              cos(y(1))*sin(y(3));
              sin(y(1));
              u4;
              u5;
              y(5)*sin(y(1))+y(2)*cos(y(1))];

end
