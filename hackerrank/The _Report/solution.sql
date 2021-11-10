Select
  if (Grade >= 8, Name, Null) as Name,
  Grade,
  Marks
From Students as a,
     Grades as b
Where Marks between Min_mark and Max_mark
Order by Grade DESC, Name ASC, Marks ASC
