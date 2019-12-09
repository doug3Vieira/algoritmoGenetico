function [neuronios,neuroCusto]=neuroBegin(pop,bag,tamNeuronios)
tam=size(pop,1);
neuronios =[zeros(tamNeuronios,bag)];
neuroCusto=[zeros(tamNeuronios,1)];

bag=bag+1;
for j=1:tamNeuronios
    poslivre=1;
    for k=1:7
        choose = randi([1 tam]);
        for i=1:7
            if (bag-poslivre)<pop(choose,1)
                choose = randi([1 tam]);
            end
        end
        
        
        if (bag-poslivre)<pop(choose,1)
            k=8;
        else
            neuroCusto(j,1)=neuroCusto(j,1)+pop(choose,2);
            for i=poslivre:(poslivre+pop(choose,1)-1)
                neuronios(j,i)=choose;
            end
            poslivre=i+1;
        end
        
    end
end



