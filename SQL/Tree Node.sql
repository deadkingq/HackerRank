select t.id,
(case when t.p_id is Null then 'Root'
     when t.id in (select p_id from tree) then 'Inner'
     else 'Leaf'
end) as Type
from tree t
order by id
