function [pop,bag]= beginpopulation(elements)
%elements � o n�mero de elementos a serem criados
%A fins did�ticos todos os elementos s�o randomicos com valores entre 1 at�
%a quantidade definida em elements
% ser� criado a mochila do tamanho de metado do total de elementos mais o
% log do mesmo. bag=elements/2 + log10(elements) e depois arredondando ela
%todos os elementos ser�o criados no range da mochila
%na primeira coluna de pop existir� os tamanho dos itens
%na segunda coluna os seus valores
bag=elements/2 + log10(elements);
pop=rand(elements,2);
pop(:,1) = 1 + (bag-1)*pop(:,1);
pop(:,2)=pop(:,2).*elements;
pop(:,1) = round(pop(:,1));
bag=round(bag);
end