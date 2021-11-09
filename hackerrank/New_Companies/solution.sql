Select 
	a.company_code,
	founder,
	lead_manager_n,
	senior_manager_n,
	manager_n,
	employee_n
From Company as a,
		(Select
			company_code,
		 	count(distinct lead_manager_code) as lead_manager_n
		 from Lead_Manager
		 group by company_code) as b,
		(Select
			company_code,
			count(distinct senior_manager_code) as senior_manager_n
		 from Senior_Manager
		 group by company_code) as c,
		(Select
			company_code,
			count(distinct manager_code) as manager_n
		 from  Manager
		 group by company_code) as d,
		(Select
			company_code,
			count(distinct employee_code) as employee_n
		 from  Employee
		 group by company_code) as e
Where a.company_code = b.company_code and 
      a.company_code = c.company_code and
      a.company_code = d.company_code and
      a.company_code = e.company_code
Order by company_code
