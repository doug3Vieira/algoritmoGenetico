function [neuronios neuroCusto]= recombinar(pais,populacao,totalNeuronios,neuroCustoatual);
tam=totalNeuronios;
neuronios =[zeros(totalNeuronios,size(pais,2))];
neuroCusto=[zeros(totalNeuronios,1)];
nPais=size(pais,1);
for i=1:size(pais,1)
    neuronios(i,:)=pais(i,:);
    neuroCusto(i,:)=neuroCustoatual(i,:);
end

for i=1:size(pais,1)-1
    inter=pais(i,1);
    livre=77;
    k=0;
    stop=1;
    if inter <7
        if populacao(inter,1)<livre
            for j=(k+1):(populacao(inter,1)+k)
                neuronios(i+nPais,j)=populacao(inter,1);
            end
        else
            inter=pais(i,1+inter);
            if populacao(inter,1)<livre
                for j=(k+1):(populacao(inter,1)+k)
                    neuronios(i+nPais,j)=populacao(inter,1);
                end
            end
            
        end
        
        
        neuroCusto(i+nPais,1)=neuroCusto(i+nPais,1)+populacao(inter,2);
        k=j;
        livre=livre-populacao(inter,1);
    end
    %        mae
    inter=pais(i+1,1);
    if inter <7
        if populacao(inter,1)<livre
            for j=(k+1):(populacao(inter,1)+k)
                neuronios(i+nPais,j)=populacao(inter,1);
            end
        else
            inter=pais(i,1+inter);
            if populacao(inter,1)<livre
                for j=(k+1):(populacao(inter,1)+k)
                    neuronios(i+nPais,j)=populacao(inter,1);
                end
            end
        end
        
        neuroCusto(i+nPais,1)=neuroCusto(i+nPais,1)+populacao(inter,2);
    end
end

end






