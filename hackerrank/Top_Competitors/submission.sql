Select
  h.hacker_id,
  h.name
From Hackers as h,
    (Select
      s.hacker_id,
      sum(if (s.score = d.score, 1, 0)) as mark
    from Challenges as c, Difficulty as d, Submissions as s
    Where c.difficulty_level = d.difficulty_level and
          s.challenge_id = c.challenge_id
    Group by s.hacker_id) as cds
Where h.hacker_id = cds.hacker_id and
      cds.mark > 1
Order by cds.mark DESC, h.hacker_id ASC
