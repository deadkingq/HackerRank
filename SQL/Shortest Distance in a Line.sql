select min(abs(p1.x-p2.x)) as shortest
from point as p1 join point as p2 on (p1.x<>p2.x);


# Initialize the prev variable to a big negative number so that the first value of difference will never get selected
set @prev := -100000000; 
select min(diff) as shortest
from (select (x - @prev) as diff, @prev := x 
      from (select * from point order by x) t
     ) tt
;
