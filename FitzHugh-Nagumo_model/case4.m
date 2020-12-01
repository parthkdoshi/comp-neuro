%Parth Doshi
%BE17B024
%Case 4

a = 0.5;
b = 0.012;
r = 0.1;

%For Case 4, choose input current
I = 0.05;

%Null-cline in the range -0.5 to 1.5
v_i = -0.5:0.01:1.5;
w = v_i.*(a-v_i).*(v_i-1) + I;

plot(v_i,w);
hold on
ax = gca;
ylabel({'W'});
xlabel({'V'});
title({'Null Clines at 0.05A'});

w = b.*v_i/r;
plot(v_i,w);

%Phase plots - displaced by (0.01,0.01)
%[vp,wp] = gen_fhn(0.05,0.116,0.023);
%[vp,wp] = gen_fhn(0.05,0.591,0.017);
[vp,wp] = gen_fhn(0.05,0.827,0.107);
a = plot(vp,wp);
title({'Trajectory'});

hold off

%Plot for V vs time
t = 0:0.1:100;
plot(t,vp);
hold on
ax = gca;
ylabel({'V'});
xlabel({'t(s)'});
title({'V vs time'});

%Plot for W vs time
t = 0:0.1:100;
plot(t,wp);
hold on
ax = gca;
ylabel({'W'});
xlabel({'t(s)'});
title({'W vs time'});