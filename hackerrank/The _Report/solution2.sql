Select
  if (Floor(Marks/10) + 1 >= 8, name, Null) as Name,
  if (Marks < 100, Floor(Marks/10) + 1, Floor(Marks/10)) as Grade,
  Marks
From Students
Order by Grade DESC, Name ASC, Marks ASC
