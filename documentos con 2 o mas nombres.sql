/*
select * from personas
where documento = '0'
order by documento asc
*/
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY 
      [institucion_id]
       ORDER BY (SELECT NULL)) AS RowNumber 
    FROM instituciones
)
select * FROM CTE WHERE RowNumber > 1
order by RowNumber desc;