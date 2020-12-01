%Parth Doshi
%BE17B024
%Simulating the two variable FitzHugh-Nagumo neuron model
%Inputs will be input current I, and initial values of v and w
%The values of a,b,r are constant

function [v,w] = gen_fhn(I,v_in,w_in)
a = 0.5;
b = 0.1;
r = 0.1;

vt = v_in;
wt = w_in;
%Values at time t are initialised

v = [];
w = [];
%Values to store results at all times

%Euler integration
for t = 0:0.1:100
    dv = vt*(a-vt)*(vt-1) - wt + I;
    dw = b*vt - r*wt;
    
    v_new = vt + dv*0.1;
    w_new = wt + dw*0.1;
    
    v = [v,v_new];
    w = [w,w_new];
    
    vt = v_new;
    wt = w_new;
end
%Output is values of v and w at all times