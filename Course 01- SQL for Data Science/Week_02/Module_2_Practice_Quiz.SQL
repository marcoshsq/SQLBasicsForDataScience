/*

For all the questions in this practice set, you will be using the Salary by Job Range Table. This is a
single table titled: salary_range_by_job_classification. This table contains the
following columns:

SetID;
Job_Code;
Eff_Date;
Sal_End_Date; 
Salary_setID;
Sal_Plan;
Grade; 
Step;
Biweekly_High_Rate; 
Biweekly_Low_Rate;
Union_Code;
Extended_Step;
Pay_Type.

*/

-- 01: Find the distinct values for the extended step.

SELECT DISTINCT Extended_step
FROM salary_range_by_job_classification;

-- 02: Excluding $0.00, what is the minimum bi-weekly high rate of pay (please include the dollar sign and decimal point in your answer)?

Select min(Biweekly_high_Rate)
From salary_range_by_job_classification
where biweekly_high_rate <> '$0.00';

-- 03: What is the maximum biweekly high rate of pay (please include the dollar sign and decimal point in your answer)?

SELECT Max(Biweekly_high_Rate) 
from salary_range_by_job_classification;

-- 04: What is the pay type for all the job codes that start with '03'?

Select job_code, pay_type
from salary_range_by_job_classification
where Job_Code like '03%';

-- 05: Run a query to find the Effective Date (eff_date) or Salary End Date (sal_end_date) for grade Q90H0?

Select eff_date, sal_end_date, grade
from salary_range_by_job_classification
where Grade = "Q90H0";

-- 06: Sort the Biweekly low rate in ascending order. 

SELECT Biweekly_Low_Rate 
FROM salary_range_by_job_classification
ORDER BY Biweekly_Low_Rate ASC;

-- 07: What Step are Job Codes 0110-0400?

SELECT Step, Job_Code 
FROM salary_range_by_job_classification
WHERE Job_Code BETWEEN 0110 and 0400;

-- 08: What is the Biweekly High Rate minus the Biweekly Low Rate for job Code 0170?

SELECT Job_Code, Biweekly_High_Rate-Biweekly_Low_Rate AS ans
FROM salary_range_by_job_classification
WHERE Job_Code = '0170';

-- 09: What is the Extended Step for Pay Types M, H, and D?

select Extended_Step, Pay_Type
from salary_range_by_job_classification
WHERE Pay_Type = "M" AND "D" AND "H";

-- 10: What is the step for Union Code 990 and a Set ID of SFMTA or COMMN? 

SELECT STEP, Union_Code, SetID
from salary_range_by_job_classification
where Union_Code=990 and SetID in ('SFMTA', 'COMMN')
