function [pop,bag]= beginpopulation(elements)
%elements é o número de elementos a serem criados
%A fins didáticos todos os elementos são randomicos com valores entre 1 até
%a quantidade definida em elements
% será criado a mochila do tamanho de metado do total de elementos mais o
% log do mesmo. bag=elements/2 + log10(elements) e depois arredondando ela
%todos os elementos serão criados no range da mochila
%na primeira coluna de pop existirá os tamanho dos itens
%na segunda coluna os seus valores
bag=elements/2 + log10(elements);
pop=rand(elements,2);
pop(:,1) = 1 + (bag-1)*pop(:,1);
pop(:,2)=pop(:,2).*elements;
pop(:,1) = round(pop(:,1));
bag=round(bag);
end