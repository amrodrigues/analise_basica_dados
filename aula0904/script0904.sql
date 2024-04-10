use empregados_db;
select avg(salario) as Media_Renda from empregado where sexo = 'F';
select avg(salario) as Media_Renda from empregado where sexo = 'M';

select max(salario) as Maior_Renda , min(salario) as Menor_Renda from empregado where sexo = 'F';
select max(salario) as Maior_Renda , min(salario) as Menor_Renda from empregado where sexo = 'M';

select max(salario) -  min(salario) as Interssecao_Renda from empregado where sexo = 'F';
select max(salario) -  min(salario) as Interssecao_Renda from empregado where sexo = 'M';

select sum(salario) as Total_Renda from empregado where sexo = 'F';
select sum(salario) as Total_Renda from empregado where sexo = 'M';

select nome as empregrado, salario as renda , format((salario*0.12),2) as inss , format((salario*0.15),2) as irpf from empregado where salario > 2400;

select char_length(nome) as tamanho_nome , (char_length(nome) + (rand()*char_length(nome))*cod_emp) as id_aleatorio from empregado;
select 
char_length(replace(nome,'A', '')) as tamanho_nome ,
 (char_length(replace(nome,'A', '')) + (rand() * char_length(replace(nome,'A', '')))*cod_emp) as id_aleatorio
from empregado;