%_________le produit Diamant_________

function [T]=produit_diam(Vm,A,n,p)
[m,k]=size(A);
T=zeros(n,k*p);
for i=1:k
    D=zeros(n,p); % D est pour le produit Diamant de Vm et di
    d=A(:,i);
    d=d';
    for j=1:m
        D=D+d(j)*Vm(:,(j-1)*p+1:j*p);
    end
    T(:,(i-1)*p+1:i*p)=D;
end
end