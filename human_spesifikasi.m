%--------------------------------------------------
% DH
% dinamis
t1=(pi/180)*0; t2=(pi/180)*(102); t3=(pi/180)*(-9.93); t4=(pi/180)*(16.31);
               t5=(pi/180)*(150.40); t6=(pi/180)*(52.81); t7=(pi/180)*(-94.68);        %dlm rad
%tv1=(pi/180)*0; tv2=(pi/180)*(0); tv3=(pi/180)*(0); tv4=(pi/180)*(0);
%                tv5=(pi/180)*(0); tv6=(pi/180)*(0); tv7=(pi/180)*(0);   % dlm rad/s
%ta1=(pi/180)*0; ta2=(pi/180)*(0); ta3=(pi/180)*(0); ta4=(pi/180)*(0);
%                ta5=(pi/180)*(0); ta6=(pi/180)*(0); ta7=(pi/180)*(0);   % dlm rad/s2
               
tv1=(pi/180)*0; tv2=(pi/180)*(29); tv3=(pi/180)*(88.86); tv4=(pi/180)*(-130);
                tv5=(pi/180)*(-146); tv6=(pi/180)*(-127); tv7=(pi/180)*(-78);   % dlm rad/s
ta1=(pi/180)*0; ta2=(pi/180)*(-210); ta3=(pi/180)*(-100); ta4=(pi/180)*(-80);
                ta5=(pi/180)*(1000); ta6=(pi/180)*(-3000); ta7=(pi/180)*(890);  % dlm rad/s2

%statis
%al1=0; al2=0; al3=0; al4=0; al5=0; al6=0; al7=0;   % dlm rad
a1=0.1157; a2=0.281; a3=0.3884; a4=0; a5=0.3884; a6=0.281; a7=0.1653;   % dlm meter (138cm)
d1=0; d2=0; d3=0; d4=0.1653; d5=0; d6=0; d7=0;                % dlm meter
%--------------------------------------------------

%--------------------------------------------------
% konstanta
z0 = [0; 0; 1];
g = [0; 9.8; 0];    % dlm m/s2
m1 = 0.49; m2 = 1.47; m3 = 3.43; m4 = 21.87;
m5 = 3.43; m6 = 1.47; m7 = 0.49;     % dlm kg (32.64kg)
% b1 = 0; b2 = 0; b3 = 0; b4 = 0; b5 = 0; b6 = 0; b7 = 0;
%--------------------------------------------------

%--------------------------------------------------
% i-1Ri dan iRi-1
R01=[cos(t1) -sin(t1) 0; sin(t1) cos(t1) 0; 0 0 1];
R10=[cos(t1) sin(t1) 0; -sin(t1) cos(t1) 0; 0 0 1];
R12=[cos(t2) -sin(t2) 0; sin(t2) cos(t2) 0; 0 0 1];
R21=[cos(t2) sin(t2) 0; -sin(t2) cos(t2) 0; 0 0 1];
R23=[cos(t3) -sin(t3) 0; sin(t3) cos(t3) 0; 0 0 1];
R32=[cos(t3) sin(t3) 0; -sin(t3) cos(t3) 0; 0 0 1];
R34=[cos(t4) -sin(t4) 0; sin(t4) cos(t4) 0; 0 0 1];
R43=[cos(t4) sin(t4) 0; -sin(t4) cos(t4) 0; 0 0 1];
R45=[cos(t5) -sin(t5) 0; sin(t5) cos(t5) 0; 0 0 1];
R54=[cos(t5) sin(t5) 0; -sin(t5) cos(t5) 0; 0 0 1];
R56=[cos(t6) -sin(t5) 0; sin(t6) cos(t6) 0; 0 0 1];
R65=[cos(t6) sin(t6) 0; -sin(t6) cos(t6) 0; 0 0 1];
R67=[cos(t7) -sin(t7) 0; sin(t7) cos(t7) 0; 0 0 1];
R76=[cos(t7) sin(t7) 0; -sin(t7) cos(t7) 0; 0 0 1];
%--------------------------------------------------

%--------------------------------------------------
% iR0pi
R10p1=[a1; 0; 0];
R20p2=[a2; 0; 0];
R30p3=[a3; 0; 0];
R40p4=[0; 0; d4];
R50p5=[a5; 0; 0];
R60p6=[a6; 0; 0];
R70p7=[a7; 0; 0];
%--------------------------------------------------

%--------------------------------------------------
% iR0si
R10s1=[-a1/2; 0; 0];
R20s2=[-a2/2; 0; 0];
R30s3=[-a3/2; 0; 0];
R40s4=[0.3; 0; -0.12];
R50s5=[-a5/2; 0; 0];
R60s6=[-a6/2; 0; 0];
R70s7=[-a7/2; 0; 0];
%--------------------------------------------------

%--------------------------------------------------
% inersia Ri0IiR0i
R10I1R01 = [0 0 0; 0 (m1*a1*a1)/12 0; 0 0 (m1*a1*a1)/12];
R20I2R02 = [0 0 0; 0 (m2*a2*a2)/12 0; 0 0 (m2*a2*a2)/12];
R30I3R03 = [0 0 0; 0 (m3*a3*a3)/12 0; 0 0 (m3*a3*a3)/12];
R40I4R04 = [(m4*d4*d4)/12 0 0; 0 (m4*((0.6*0.6)+(d4*d4)))/12 0; 0 0 (m4*0.6*0.6)/12];
R50I5R05 = [0 0 0; 0 (m5*a5*a5)/12 0; 0 0 (m5*a5*a5)/12];
R60I6R06 = [0 0 0; 0 (m6*a6*a6)/12 0; 0 0 (m6*a6*a6)/12];
R70I7R07 = [0 0 0; 0 (m7*a7*a7)/12 0; 0 0 (m7*a7*a7)/12];
%--------------------------------------------------