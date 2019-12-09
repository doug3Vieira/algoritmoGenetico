function [rank rankCusto]=rankear(neuronios,neuroCusto)
tam=size(neuronios,1);
rank=zeros(size(neuronios));
temp=zeros((size(neuroCusto)));
rankCusto=zeros((size(neuroCusto)));
aux=1;
for j=1:tam
    for i=1:tam
        if neuroCusto(aux,1)<neuroCusto(i,1)
            aux=i;
        end
    end
    rank(j,:)=neuronios(aux,:);
    rankCusto(j,1)=neuroCusto(aux,1);
    neuroCusto(aux,1)=0;
    
end
end