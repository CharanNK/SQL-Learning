--partition by deos not reduce the number of columns.
--This query groups similar class together, shows individual mark and average marks of that class.
select name, class, mark, AVG(mark) OVER ( PARTITION BY class) as avg_marks from student;