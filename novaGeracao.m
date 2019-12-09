function [neuronios neuroCusto]=novaGeracao(rank, rankCusto, perCentDead,populacao);
    valorMutante=round(size(rank,1)*(perCentDead));
    [neuronios neuroCusto]=xmen(rank,rankCusto,populacao,valorMutante);
    [rank rankCusto]=rankear(neuronios,neuroCusto); 
end

