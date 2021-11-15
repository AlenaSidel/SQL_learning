Select 
  h.hacker_id, 
  h.name
From submissions s
     inner join challenges c
on s.challenge_id = c.challenge_id
     inner join difficulty d
on c.difficulty_level = d.difficulty_level 
     inner join hackers h
on s.hacker_id = h.hacker_id
Where s.score = d.score and 
      c.difficulty_level = d.difficulty_level
Group by h.hacker_id, h.name
Having count(s.hacker_id) > 1
Order by count(s.hacker_id) DESC, s.hacker_id ASC
