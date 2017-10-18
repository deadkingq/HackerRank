select Name from Candidate
where id = (
    select CandidateId from Vote
    group by CandidateId 
    order by count(CandidateId) DESC 
    limit 1);
