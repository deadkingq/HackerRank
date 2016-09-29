select A.Score, count(B.Score) as Rank
from Scores as A, (select distinct Score from Scores) as B
where A.score <= B.Score
group by A.Id
order by A.Score desc;
