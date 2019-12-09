function pais=papais(rank,nPais)
pais=zeros(nPais,size(rank,2));
for i=1:nPais
    pais(i,:)=rank(i,:);
end


end

