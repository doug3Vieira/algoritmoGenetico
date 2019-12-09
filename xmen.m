function [neuronios neuroCusto]=xmen(neuronios,neuroCusto,populacao,valorMutante);
begin=size(neuronios,1)-valorMutante;
tam=size(populacao,1);
bag=78;

for j=begin:size(neuronios,1)
    poslivre=1;
    for k=1:7
        choose = randi([1 tam]);
        for i=1:7
            if (bag-poslivre)<populacao(choose,1)
                choose = randi([1 tam]);
            end
        end
        
        
        if (bag-poslivre)<populacao(choose,1)
            k=8;
        else
            neuroCusto(j,1)=neuroCusto(j,1)+populacao(choose,2);
            for i=poslivre:(poslivre+populacao(choose,1)-1)
                neuronios(j,i)=choose;
            end
            poslivre=i+1;
        end
        
    end
end

end

