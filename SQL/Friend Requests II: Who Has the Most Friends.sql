select t3.id as id, count(t3.id) as num from
(
select t1.requester_id as id, t1.accepter_id as friend_id from request_accepted as t1
UNION ALL
select t2.accepter_id as id, t2.requester_id as friend_id from request_accepted as t2
)
as t3
GROUP BY
t3.id
ORDER BY num DESC
LIMIT 1;
