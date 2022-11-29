function P_rel = cov2Inertial(y,P_MSC)

p1 = sin(y(1))*cos(y(3));
p2 = cos(y(1))*sin(y(3));
p3 = sin(y(1))*sin(y(3));
p4 = cos(y(1))*cos(y(3));

J11 = -p1;
J13 = -p2;
J16 = -p4/y(6);
J21 = -p3;
J23 = p4;
J26 = -p2/y(6);
J31 = cos(y(1));
J36 = -sin(y(1))/y(6);
J41 = -y(5)*p1 - y(2)*p4;
J42 = -p1;
J43 = -y(5)*p2 + y(2)*p3 - y(4)*cos(y(3));
J44 = -sin(y(3));
J45 = p4;
J46 = -(y(5)*p4 - y(2)*p1 - y(4)*sin(y(3)))/y(6);
J51 = -y(5)*p3 - y(2)*p2;
J52 = -p3;
J53 = y(5)*p4 - y(2)*p1 - y(4)*sin(y(3));
J54 = cos(y(3));
J55 = p2;
J56 = -(y(5)*p2 - y(2)*p3 + y(4)*cos(y(3)))/y(6);
J61 = y(5)*cos(y(1)) - y(2)*sin(y(1));
J62 = cos(y(1));
J65 = sin(y(1));
J66 = -(y(5)*sin(y(1)) + y(2)*cos(y(1)))/y(6);

J = [J11,0,J13,0,0,J16;
    J21,0,J23,0,0,J26;
    J31,0,0,0,0,J36;
    J41,J42,J43,J44,J45,J46;
    J51,J52,J53,J54,J55,J56;
    J61,J62,0,0,J65,J66]./y(6);

P_rel = J*P_MSC*J.';

end