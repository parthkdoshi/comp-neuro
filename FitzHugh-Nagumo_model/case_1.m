%Parth Doshi
%BE17B024
%Case 1

a = 0.5;
b = 0.1;
r = 0.1;

%For Case 1, I = 0
I = 0;

%Null-cline in the range -1.5 to 2
v_i = -1.5:0.1:2;
w = v_i.*(a-v_i).*(v_i-1) + I;

plot(v_i,w);
hold on
ax = gca;
ylabel({'W'});
xlabel({'V'});
title({'Null Clines at 0A'});

w_i = -1.5:0.1:2;
v = r.*w_i/b;
plot(w_i,v);

%Phase plots
[vp,wp] = gen_fhn(0,0.4,0);
%[vp,wp] = gen_fhn(0,0.6,0);
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