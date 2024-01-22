
k=8.99e9; % coulomb's constant 


# Problem 3

% Gibbons
q1=4e-9; % coulomb
q2=6e-9; % coulomb
a=.6; % meter
b=.8; % meter

r1=sqrt(a.^2+b.^2);

% Find E1
E1mag=k*q1./r1.^2;
E1=[E1mag.*a./r1, E1mag.*b./r1];

% Find E2
E2mag=k*q2./a.^2;
E2=[-E2mag, 0];

% Find Enet
Enet = E1+E2;
Enetmag=sqrt(Enet(1).^2+Enet(2).^2);

% Find angle wrt +x-axis
theta=atan(abs(Enet(2)/Enet(1)));
phi=pi-theta;
