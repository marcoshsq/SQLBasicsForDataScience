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

-- 05:
-- 06:
-- 07:
-- 08:
-- 09:
-- 10:
