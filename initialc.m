function [t, x] =  initialc(D,mb,mp,ms)
f0   = -acos(-1+(D/5));                                  % f
F0   = (sqrt(2)/4)*(D^(-3/2))*(1+cos(f0))^2;             % df/dt
r0   = (0.2*(mb)^(1/3))/(1+cos(f0)) %(6*(mb)^(1/3))/(1+cos(f0))     % R
R0   = ((mb^(1/3))/(sqrt(2*D)))*(sin(f0));               % DR/dt
t    = (sqrt(2)/3)*D^(3/2)*tan(f0/2)*(3+(tan(f0/2))^2);  % time
xcm  = r0*cos(f0);                                       % COM x-component
ycm  = r0*sin(f0);                                       % COM y-component
Xcm  = R0*cos(f0)-r0*F0*sin(f0);                         % COM dx/dt
Ycm  = R0*sin(f0)+r0*F0*cos(f0);                         % COM dy/dt
phi  = pi/2;                                             % Binary phase angle
rpx  = ms*cos(phi+pi);                                   % rel. primary x
rpy  = ms*sin(phi+pi);                                   % rel. primary y
rsx  = mp*cos(phi);                                      % rel. secondary x
rsy  = mp*sin(phi);                                      % rel. secondary y
Rpx  = ms;                                               % rel. primary dx/dt
Rpy  = 0;                                                % rel. primary dy/dt
Rsx  = -mp;                                              % rel. secondary dx/dt
Rsy  = 0;                                                % rel. secondary dy/dt
x(1) = xcm+rpx;                                          % x : primary star
x(2) = ycm+rpy;                                          % y
x(3) = Xcm+Rpx;                                          % dx/dt
x(4) = Ycm+Rpy;                                          % dy/dt
x(5) = xcm+rsx;                                          % x : secondary star
x(6) = ycm+rsy;                                          % y
x(7) = Xcm+Rsx;                                          % dx/dt
x(8) = Ycm+Rsy;                                          % dy/dt
