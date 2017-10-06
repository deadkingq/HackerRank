select ROUND(SQRT(min((p1.x-p2.x)*(p1.x-p2.x)+(p1.y-p2.y)*(p1.y-p2.y))),2) as shortest 
from
point_2d as p1 join point_2d as p2
on p1.x!=p2.x or p1.y!=p2.y; 
