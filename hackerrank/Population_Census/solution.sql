Select 
  Sum(b.population)
From Country as a,
    City as b
Where a.code = b.countrycode and continent='Asia'
