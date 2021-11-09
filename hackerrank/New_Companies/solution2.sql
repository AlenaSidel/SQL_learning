Select 
       a.company_code, 
       a.founder,
       count(distinct b.lead_manager_code),
       count(distinct c.senior_manager_code),
       count(distinct d.manager_code),
       count(distinct e.employee_code)
from Company as a,
     Lead_Manager as b,
     Senior_Manager as c,
     Manager as d,
     Employee as e 
Where a.company_code = b.company_code and
      b.lead_manager_code = c.lead_manager_code and
      c.senior_manager_code = d.senior_manager_code and
      d.manager_code = e.manager_code
group by a.company_code, a.founder
order by a.company_code
