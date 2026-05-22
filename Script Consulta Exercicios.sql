select top 14
nome, ano 
from Filmes 


select 
nome, ano ,duracao
from Filmes 
order by ano  



select 
nome, ano ,duracao
from Filmes 
where 
nome like 'De Volta para o Futuro'



select 
nome, ano ,duracao
from Filmes 
where 
ano= '1997'


select 
nome, ano ,duracao
from Filmes 
where 
ano > '2000'


select 
nome, ano ,duracao
from Filmes 
where 
Duracao > '100' and Duracao < '150'
order by Duracao  	


select 
ano , count(*) as Quantidade	
from Filmes 
group by ano	
order by Quantidade desc


select 
PrimeiroNome, UltimoNome from 
Atores
where 
Genero = 'M'


select 
PrimeiroNome, UltimoNome from 
Atores
where 
Genero = 'F'
order by PrimeiroNome
 
 select * from filmes
 select * from Generos
 select * from FilmesGenero

select
 f.Nome
,g.Genero
from filmes f
join FilmesGenero fg on fg.IdFilme = f.Id
join Generos g on g.Id = fg.IdGenero
order by f.Nome ,  g.Genero  


select
 f.Nome
,g.Genero
from filmes f
join FilmesGenero fg on fg.IdFilme = f.Id
join Generos g on g.Id = fg.IdGenero
where 
Genero = 'Mistério'
order by f.Nome ,  g.Genero  

--Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select
 f.Nome
,PrimeiroNome
,UltimoNome
,Papel
from filmes f
join ElencoFilme ecfAtores on ecfAtores.IdFilme = f.Id
join FilmesGenero fg on fg.IdFilme = f.Id
join Generos g on g.Id = fg.IdGenero
join Atores a on a.Id  = ecfAtores.IdAtor
