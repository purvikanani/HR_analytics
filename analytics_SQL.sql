# Attrition Related Questions:

# 1.What is the overall attrition rate in the dataset?

SELECT
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    COUNT(*) AS Total_Count,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS Attrition_Rate
FROM hr_data;

# 2 Are there specific age bands or job roles with higher attrition rates?

SELECT CF_age_band, Job_Role, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY CF_age_band, Job_Role
order by 3 desc;

# 3. How does business travel correlate with attrition?

SELECT Business_Travel, COUNT(*) AS Count
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Business_Travel;

# 4. Does overtime significantly contribute to attrition?

SELECT Over_Time, COUNT(*) AS Count
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Over_Time;

# Demographic and Employee Profile Questions:

#1. What is the age distribution of employees in the dataset?

SELECT CF_age_band, COUNT(*) AS Count
FROM hr_data
GROUP BY CF_age_band
order by 1;

# 2. How is attrition distributed across different age bands

SELECT CF_age_band, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY CF_age_band
order by 2 desc;

# 3. What is the gender distribution in the dataset?

SELECT Gender, COUNT(*) AS Count
FROM hr_data
GROUP BY Gender;

# 4. Are there correlations between education level and attrition?

SELECT Education, COUNT(*) AS Count
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Education
order by  2 desc;

#5. How does marital status affect attrition rates?

SELECT Marital_Status, COUNT(*) AS Count
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Marital_Status;

#Job-Related Questions:

# 1.How does job role correlate with attrition rates?

SELECT Job_Role, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Job_Role
order by 2 desc;

#2. Is there a relationship between job satisfaction and attrition?

SELECT Job_Satisfaction, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Job_Satisfaction
order by 1;

#3. Does distance from home impact attrition rates?

SELECT Distance_From_Home, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Distance_From_Home
order by 2 desc;

#4. Are certain departments more susceptible to attrition than others?

SELECT Department, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Department;

#5. How does performance rating affect attrition?

SELECT Performance_Rating, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Performance_Rating;

# Work Experience and Career Development Questions:

#1.  How does the number of years at the company correlate with attrition?

SELECT Years_At_Company, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Years_At_Company
order by 2 desc;

#2. Is there a link between total working years and attrition?

SELECT Total_Working_Years, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Total_Working_Years
order by 2 desc;


#3. How does the number of companies worked at influence attrition rates?

SELECT Num_Companies_Worked, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Num_Companies_Worked
order by 2 desc;


#4. Does job level affect attrition rates?

SELECT Job_Level, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Job_Level 
order by 2 desc;


# Employee Satisfaction and Well-being Questions:

#1. Does work-life balance impact attrition rates?

SELECT Work_Life_Balance, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Work_Life_Balance
order by 2 desc;

#2. How does environment satisfaction correlate with attrition?

SELECT Environment_Satisfaction, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Environment_Satisfaction
order by 2 desc;

#3. Is there a relationship between relationship satisfaction and attrition?

SELECT Relationship_Satisfaction, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Relationship_Satisfaction;

#4.Does training frequency affect attrition rates?

SELECT Training_Times_Last_Year, COUNT(*) AS AttritionCount
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Training_Times_Last_Year;


#5. How does income or salary affect attrition rates?

SELECT CF_attrition_label, AVG(Monthly_Income) AS Average_Monthly_Income
FROM hr_data
GROUP BY CF_attrition_label;












