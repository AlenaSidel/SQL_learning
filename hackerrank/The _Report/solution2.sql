Select
  if (Grade >= 8, Name, Null) as Name,
  Grade,
  Marks
From Students as a,
     Grades as b
Where Floor(Marks/10)*10 = b.Min_mark or 
      Floor(Marks/10)*10 = b.Max_mark
Order by Grade DESC, Name ASC, Marks ASC
