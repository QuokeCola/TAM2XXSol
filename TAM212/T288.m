%copy this from website
x0 = 9
y0 = 12
end_time = 2

syms t
%enter v here
v(t) = 3*sin(-2*t)

%there are three types.
command = 'er';

L_old = normest([x0,y0]);
switch command
    case 'etheta'
        r = normest([x0,y0]);
        angle = atan(y0/x0)+int(v(t)/r,t,0,end_time);
    case 'er'
        r = normest([x0,y0])+int(v(t),t,0,end_time);
        angle = atan(y0/x0);
    case 'v'
        r = v(1)*t+normest([x0,y0]);
        angle = atan(y0/x0)+int(v(2)/r,t,0,end_time);
        r = v(1)*end_time+normest([x0,y0]);
    otherwise
        'not valid'
end

P = vpa([cos(angle),sin(angle)]*r)