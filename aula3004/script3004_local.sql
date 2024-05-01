delimiter //
create procedure spu_dissidio_anual (in taxa1 decimal, in taxa2 decimal, in minimo decimal)

begin 
create temporary table tmp_dissido_anual
select *,
case
  when salario >= (minimo*2) then (salario *taxa1)
 else (salario *taxa2)
  end as aumento
  from empregado;  
 

start transaction;
UPDATE empregado emp
    JOIN tmp_dissido_anual temp ON emp.cod_emp = temp.cod_emp
    SET emp.salario = temp.aumento;


select * from empregado;
drop table tmp_dissido_anual;
end 
//
select *,
case
  when salario >= (1413*2) then (salario *1.07)
  when salario <= (1413*2) then (salario *1.15)
  end as aumento
  from empregado;  
drop procedure spu_dissidio_anual

call spu_dissidio_anual(1.07,1.75,1412.17)
