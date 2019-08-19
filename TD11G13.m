%%
alt1jmv = csvread('R134a_alt1_JMV.dat');
alt1pv225 = csvread('R134a_alt1_PV225K.dat');
alt1pv243 = csvread('R134a_alt1_PV243K.dat');
alt1pv262 = csvread('R134a_alt1_PV262K.dat');
alt1pv281 = csvread('R134a_alt1_PV281K.dat');
alt1pv299 = csvread('R134a_alt1_PV299K.dat');
alt1pv318 = csvread('R134a_alt1_PV318K.dat');
alt1pv337 = csvread('R134a_alt1_PV337K.dat');
alt1pv355 = csvread('R134a_alt1_PV355K.dat');
alt1pv367 = csvread('R134a_alt1_PV367K.dat');
alt1pv393 = csvread('R134a_alt1_PV393K.dat');
alt1pv412 = csvread('R134a_alt1_PV412K.dat');
alt1pv430 = csvread('R134a_alt1_PV430K.dat');
alt1pv449 = csvread('R134a_alt1_PV449K.dat');


global Molw Tc Pc Rhoc Vc Acfaktor
% Initiera konstanter för ämnet 1,1,1,2-tetrafluoroetan (R134a)
Molw=102.03E-3; % Molvikt i kg/mol
Tc=374.21; % Kritisk temperatur (K)
Pc=4.0593E6; % Kritiskt tryck (Pa)
Rhoc=511.9; % Kritisk densitet (kg/m3)
Vc=Molw/Rhoc; % Kritisk volymitet (m3/mol)
Acfaktor=0.32684; % Acentrisk faktor (-)

figure(1)
loglog(alt1pv225(:,2),alt1pv225(:,1))
hold on
loglog(alt1pv243(:,2),alt1pv243(:,1),'c')
loglog(alt1pv262(:,2),alt1pv262(:,1),'m')
loglog(alt1pv281(:,2),alt1pv281(:,1),'y')
loglog(alt1pv299(:,2),alt1pv299(:,1),'k')
loglog(alt1pv318(:,2),alt1pv318(:,1),'r')
loglog(alt1pv337(:,2),alt1pv337(:,1),'g')
loglog(alt1pv355(:,2),alt1pv355(:,1),'b')
loglog(alt1pv367(:,2),alt1pv367(:,1),'w')
loglog(alt1pv393(:,2),alt1pv393(:,1),'c--')
loglog(alt1pv412(:,2),alt1pv412(:,1),'m--')
loglog(alt1pv430(:,2),alt1pv430(:,1),'y--')
loglog(alt1pv449(:,2),alt1pv449(:,1),'k--')


axis([5*10^(-5), 10^(-1), 10^(4), 10^(7)])

loglog(alt1jmv(:,4),alt1jmv(:,2))
loglog(alt1jmv(:,3),alt1jmv(:,2))
hold off
legend('225','243','262','281','299','318','337','355','367','393','412','430','449')

%3a) alt 2
alt2jmv = csvread('R134a_alt2_JMV.dat');
alt2pv225 = csvread('R134a_alt2_PV225K.dat');
alt2pv243 = csvread('R134a_alt2_PV243K.dat');
alt2pv262 = csvread('R134a_alt2_PV262K.dat');
alt2pv281 = csvread('R134a_alt2_PV281K.dat');
alt2pv299 = csvread('R134a_alt2_PV299K.dat');
alt2pv318 = csvread('R134a_alt2_PV318K.dat');
alt2pv337 = csvread('R134a_alt2_PV337K.dat');
alt2pv355 = csvread('R134a_alt2_PV355K.dat');
alt2pv367 = csvread('R134a_alt2_PV367K.dat');
alt2pv393 = csvread('R134a_alt2_PV393K.dat');
alt2pv412 = csvread('R134a_alt2_PV412K.dat');
alt2pv430 = csvread('R134a_alt2_PV430K.dat');
alt2pv449 = csvread('R134a_alt2_PV449K.dat');

figure(2)
loglog(alt2pv225(:,2),alt2pv225(:,1))
hold on
loglog(alt2pv243(:,2),alt2pv243(:,1),'c')
loglog(alt2pv262(:,2),alt2pv262(:,1),'m')
loglog(alt2pv281(:,2),alt2pv281(:,1),'y')
loglog(alt2pv299(:,2),alt2pv299(:,1),'k')
loglog(alt2pv318(:,2),alt2pv318(:,1),'r')
loglog(alt2pv337(:,2),alt2pv337(:,1),'g')
loglog(alt2pv355(:,2),alt2pv355(:,1),'b')
loglog(alt2pv367(:,2),alt2pv367(:,1),'r--')
loglog(alt2pv393(:,2),alt2pv393(:,1),'c--')
loglog(alt2pv412(:,2),alt2pv412(:,1),'m--')
loglog(alt2pv430(:,2),alt2pv430(:,1),'y--')
loglog(alt2pv449(:,2),alt2pv449(:,1),'k--')


axis([5*10^(-5), 10^(-1), 10^(4), 10^(7)])

loglog(alt2jmv(:,4),alt2jmv(:,2))
loglog(alt2jmv(:,3),alt2jmv(:,2))
hold off
legend('225','243','262','281','299','318','337','355','367','393','412','430','449')

%%
% 3b)
%T=225K

alt1pv243 = csvread('R134a_alt1_PV243K.dat');
alt2pv243 = csvread('R134a_alt2_PV243K.dat');
P=[0.083778, 0.083778, 0.50000, 1.0000, 1.5000, 2.0000, 2.5000, 3.0000, 3.5000, 4.0000, 4.5000, 5.0000...
    , 5.5000, 6.0000, 6.5000,7.0000,7.5000,8.0000,8.5000,9.0000,9.5000,10.000]*(10^6);
V=[23.209,0.073465,0.073408,0.073340,0.073273,0.073207,0.073141,0.073076,0.073012,0.072948,0.072885,0.072823,...
    0.072761,0.072700,0.072640,0.072580,0.072520,0.072462,0.072403,0.072346,0.072288,0.072232]/(1000);
loglog(V,P,'x')
hold on
loglog(alt1pv243(:,2),alt1pv243(:,1),'r')
loglog(alt2pv243(:,2),alt2pv243(:,1),'g')
hold off
legend('testdata','Alt 1','Alt 2')
%%
%T=281K
alt1pv281 = csvread('R134a_alt1_PV281K.dat');
alt2pv281 = csvread('R134a_alt2_PV281K.dat');
P=[0.38564,0.38564,1.0000,2.0000,3.0000,4.0000,5.0000,6.0000,7.0000,8.0000,9.0000,10.000]*(10^6);
V=[5.4145,0.080444,0.080272,0.080001,0.079741,0.079491,0.079250,0.079017,0.078792,0.078575,0.078364,0.078159]/(1000);
loglog(V,P,'x')
hold on
loglog(alt1pv281(:,2),alt1pv281(:,1),'r')
loglog(alt2pv281(:,2),alt2pv281(:,1),'g')
hold off
legend('testdata','Alt 1','Alt 2')

%%
%T=318K
alt1pv318 = csvread('R134a_alt1_PV318K.dat');
alt2pv318 = csvread('R134a_alt2_PV318K.dat');

P=[1.0000,1.1554,1.1554,2.0000,3.0000,4.0000,5.0000,6.0000,7.0000,8.0000,9.0000,10.000]*(10^6);
V=[2.1528,1.7771,0.090637,0.090019,0.089349,0.088735,0.088169,0.087642,0.087150,0.086688,0.086252,0.085840]/(1000);

loglog(V,P,'x')
hold on
loglog(alt1pv318(:,2),alt1pv318(:,1),'r')
loglog(alt2pv318(:,2),alt2pv318(:,1),'g')
hold off
legend('testdata','Alt 1','Alt 2')

%%
%T=355K
alt1pv355 = csvread('R134a_alt1_PV355K.dat');
alt2pv355 = csvread('R134a_alt2_PV355K.dat');

P=[1, 2 ,2.7386 ,2.7386, 3, 4, 5, 6, 7, 8, 9, 10]*(10^6);
V=[2.6124,1.0917,0.62113,0.11166,0.11045,0.10697,0.10450,0.10256,0.10097,0.099604,0.098416,0.097362]/(1000);
loglog(V,P,'x')
hold on
loglog(alt1pv355(:,2),alt1pv355(:,1),'r')
loglog(alt2pv355(:,2),alt2pv355(:,1),'g')
hold off
legend('testdata','Alt 1','Alt 2')
% Volym måste omvandlas till m3/mol, från l/mol. Samt att trycket, p, skall
% omvandlas från Mpa till Pa. 

%%
%T=393K
alt1pv393 = csvread('R134a_alt1_PV393K.dat');
alt2pv393 = csvread('R134a_alt2_PV393K.dat');

P=[1.0000,2.0000,3.0000,4.0000,5.0000,5.0000,5.0000,6.0000,7.0000,8.0000,9.0000,10.000]*(10^6);
V=[3.0179,1.3700,0.80690,0.50850,0.30285,0.30285,0.30285,0.17167,0.14189,0.13076,0.12427,0.11977]/(1000);

loglog(V,P,'x')
hold on
loglog(alt1pv393(:,2),alt1pv393(:,1),'r')
loglog(alt2pv393(:,2),alt2pv393(:,1),'g')
hold off
legend('testdata','Alt 1','Alt 2')
%%
%T=430K
alt1pv430 = csvread('R134a_alt1_PV430K.dat');
alt2pv430 = csvread('R134a_alt2_PV430K.dat');

P=[1.0000,2.0000,3.0000,4.0000,5.0000,5.0000,5.0000,6.0000,7.0000,8.0000,9.0000,10.000]*(10^6);
V=[3.3835,1.5908,0.98942,0.68582,0.50167,0.50167,0.50167,0.37840,0.29238,0.23351,0.19585,0.17267]/(1000);

loglog(V,P,'x')
hold on
loglog(alt1pv430(:,2),alt1pv430(:,1),'r')
loglog(alt2pv430(:,2),alt2pv430(:,1),'g')
hold off
legend('testdata','Alt 1','Alt 2')

% Slutsats: alternativ 1 är det diagrammet som stämemr överens med hittad data

%%

alt1pv225 = csvread('R134a_alt1_PV225K.dat');
alt1pv449 = csvread('R134a_alt1_PV449K.dat');
alt1pv355 = csvread('R134a_alt1_PV355K.dat');

x=linspace(0,10^7,500);

Z1=(alt1pv225(:,1).*alt1pv225(:,2)/(8.31447*225));
Z2=(alt1pv449(:,1).*alt1pv449(:,2)/(8.31447*449));
Z3=(alt1pv355(:,1).*alt1pv355(:,2)/(8.31447*355));

plot(alt1pv225(:,1),Z1)
hold on 
plot(alt1pv449(:,1),Z2,'g')
plot(alt1pv355(:,1),Z3,'k')
plot(x,0.9,'r')             %allt under den röda linjen aviker från idealgaslagen mer än 10%
hold off

title(' kompressibilitetsfaktorn ')
xlabel('Tryck (Pa)')
ylabel('Z')
legend('låg temp','hög temp','temp nära Tc','skiljer 10% från IDG.')

%Tryck vid skärningspunkterna på diagramet för att få respektive tryck.
[X Y]=ginput(3);
disp(' trycket ')
disp(X)

%%
clf

alt1pv225 = csvread('R134a_alt1_PV225K.dat');
alt1pv449 = csvread('R134a_alt1_PV449K.dat');
alt1pv355 = csvread('R134a_alt1_PV355K.dat');

x=linspace(0,10^7,500);

Z1=(alt1pv225(:,1).*alt1pv225(:,2)/(8.31447*225));
Z2=(alt1pv449(:,1).*alt1pv449(:,2)/(8.31447*449));
Z3=(alt1pv355(:,1).*alt1pv355(:,2)/(8.31447*355));

title(' kompressibilitetsfaktorn ')
xlabel('Tryck (Pa)')
ylabel('Z')
legend('låg temp','hög temp','temp nära Tc','skiljer 10% från IDG.')
alt1pv225 = csvread('R134a_alt1_PV225K.dat');
alt1pv449 = csvread('R134a_alt1_PV449K.dat');
alt1pv355 = csvread('R134a_alt1_PV355K.dat');



Molw=102.03E-3; % Molvikt i kg/mol
Tc=374.21; % Kritisk temperatur (K)
Pc=4.0593E6; % Kritiskt tryck (Pa)
Rhoc=511.9; % Kritisk densitet (kg/m3)
Vc=Molw/Rhoc; % Kritisk volymitet (m3/mol)
Acfaktor=0.32684; % Acentrisk faktor (-)

z1=(alt1pv225(:,1).*alt1pv225(:,2)/(8.31447*225));
z2=(alt1pv449(:,1).*alt1pv449(:,2)/(8.31447*449));
z3=(alt1pv355(:,1).*alt1pv355(:,2)/(8.31447*355));

R=8.31447;
T1=225;
T2=449;
T3=355;
Tc=374.21; %#ok<NASGU>
Tr1=T1/Tc;
Tr2=T2/Tc;
Tr3=T3/Tc;


B4=0.083-(0.422/(Tr1.^1.6));
B5=0.139-(0.172/(Tr1.^4.2));

B6=0.083-(0.422/(Tr2.^1.6));
B7=0.139-(0.172/(Tr2.^4.2));

B8=0.083-(0.422/(Tr3.^1.6));
B9=0.139-(0.172/(Tr3.^4.2));

B1=(B4+0.32684*B5)*R*Tc/Pc;
B2=(B6+0.32684*B7)*R*Tc/Pc;
B3=(B8+0.32684*B9)*R*Tc/Pc;

Z1=1+B1*(alt1pv225(:,1)./(R*T1));
Z2=1+B2*(alt1pv449(:,1)./(R*T2));
Z3=1+B3*(alt1pv355(:,1)./(R*T3));

plot(alt1pv225(:,1),Z1,'r')
hold on
plot(alt1pv449(:,1),Z2,'g')
plot(alt1pv355(:,1),Z3,'m')

% Tr=T/Tc
plot(alt1pv225(:,1),z1,'r--')
plot(alt1pv449(:,1),z2,'g--')
plot(alt1pv355(:,1),z3,'m--')


axis([0 10^7 0 1])




alt1pv225 = csvread('R134a_alt1_PV225K.dat');
alt1pv449 = csvread('R134a_alt1_PV449K.dat');
alt1pv355 = csvread('R134a_alt1_PV355K.dat');


Molw=102.03E-3; % Molvikt i kg/mol
Tc=374.21; % Kritisk temperatur (K)
Pc=4.0593E6; % Kritiskt tryck (Pa)
Rhoc=511.9; % Kritisk densitet (kg/m3)
Vc=Molw/Rhoc; % Kritisk volymitet (m3/mol)
Acfaktor=0.32684; % Acentrisk faktor (-)

R=8.31447;
T1=225;
T2=449;
T3=355;
Tc=374.21; 

kapha=0.37464+(1.54226*0.32684)-(0.26993*0.32684^2);
b=(0.0779607*R*Tc)/(Pc);

a1=((0.45723553*R^2*Tc^2)/(Pc))*((1+kapha*(1-sqrt(T1/Tc)))^2);
A1=(a1*alt1pv225(:,1))./(R^2*T1^2);

a2=((0.45723553*R^2*Tc^2)/(Pc))*((1+kapha*(1-sqrt(T2/Tc)))^2);
A2=(a2*alt1pv449(:,1))./(R^2*T2^2);

a3=((0.45723553*R^2*Tc^2)/(Pc))*((1+kapha*(1-sqrt(T3/Tc)))^2);
A3=(a3*alt1pv355(:,1))./(R^2*T3^2);

B1=(b*alt1pv225(:,1))./(R*T1);
B2=(b*alt1pv449(:,1))./(R*T2);
B3=(b*alt1pv355(:,1))./(R*T3);

G1=ones(40,1);                      % Använder oss av Peng-Robinsons kubiska formel. 
G2=(B1-1);                          %sätter Z=1, löser ut de olika rötterna utifrån den. 
G3=(A1-3.*B1.^2-2.*B1);             %Därefter skaper vi en 40X4-matris, där raderna är koeffcienterna i tredjegradspolynomet. 
G4=(-1.*(A1.*B1-B1.^2-B1.^3));      

G=[G1, G2, G3, G4];
Rots=zeros(40,3);
for i=1:40                          %Loopar används för att lösa ut rötterna ur varje rad. Ny vektor Zx,skapas för de nya lösningarna. 
    Rots(i,:)=roots(G(i,:));        %Elementen väljs utifrån Volymvärdena och deras faser.
end

for k=1:40
    Rotssort(k,:)=sort(Rots(k,:));
end
Z1(1)=Rotssort(1,1);

for i=1:39
   if i<10
       Z1(i+1)=Rotssort(i+1,1);
       
   elseif i<21
       Z1(i+1)=Rotssort(i+1,1);
       
   else
       Z1(i+1)=Rotssort(i+1,3);
   end
end
plot(alt1pv225(:,1),Z1,'r.');


E2=(B2-1);
E3=(A2-3.*B2.^2-2.*B2);
E4=(-1.*(A2.*B2-B2.^2-B2.^3));

E=[G1, E2, E3, E4];
Rots1=zeros(40,3);
for i=1:40
    Rots1(i,:)=roots(G(i,:));
end

for k=1:40
    Rotssort1(k,:)=sort(Rots1(k,:));
end
Z2(1)=Rotssort1(1,1);

for i=1:39
   if i<10
       Z2(i+1)=Rotssort1(i+1,1);
       
   elseif i<12
       Z2(i+1)=Rotssort1(i+1,1);
       
   else
       Z2(i+1)=Rotssort1(i+1,3);
   end
end
 plot(alt1pv449(:,1),Z2,'g.');
 
L2=(B2-1);
L3=(A2-3.*B2.^2-2.*B2);
L4=(-1.*(A2.*B2-B2.^2-B2.^3));

L=[G1, L2, L3, L4];
Rots2=zeros(40,3);
for i=1:40
    Rots2(i,:)=roots(G(i,:));
end

for k=1:40
    Rotssort2(k,:)=sort(Rots2(k,:));
end
Z3(1)=Rotssort2(1,1);

for i=1:39
   if i<10
       Z3(i+1)=Rotssort2(i+1,1);
       
   elseif i<23
       Z3(i+1)=Rotssort2(i+1,1);
       
   else
       Z3(i+1)=Rotssort2(i+1,3);
   end
end
plot(alt1pv355(:,1),Z3,'m.');   

legend('vir 225K', 'vir 449K', 'vir 355K', 'id 225K','id 449K','id 355K','PR 225K','PR 449K','PR 355K')

