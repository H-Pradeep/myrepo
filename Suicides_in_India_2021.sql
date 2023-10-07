/*Title: Analyzing Suicides in India 2021: A Data-Driven Insight into a National Crisis
Project Overview:
Suicides represent a complex and tragic challenge in India, affecting individuals and 
communities across the nation. This project leverages SQL for data manipulation and 
Power BI for data visualization to delve into the suicide data for the year 2021. It 
aims to provide valuable insights, patterns, and potential contributing factors, fostering 
a deeper understanding of this pressing issue.

This project begins with the collection of data from credible sources, ensuring accuracy 
and reliability. The dataset used here is derived from data.gov.in (accidental death and 
suicides in India-2021)

After getting data, pre-processing of data is done to check for any discrepencies.
I created different tables in SQL and imported data into SQL.
*/
--Creating a table of state and population
CREATE TABLE state_population (
category VARCHAR(50) NOT NULL,
state VARCHAR (50) UNIQUE NOT NULL PRIMARY KEY,
population_in_lakhs smallint NOT NULL);

--altering population_in_lakhs datatype to flaot
ALTER TABLE state_population
ALTER COLUMN population_in_lakhs TYPE FLOAT4

SELECT * FROM state_population

--Creating a table of economic status distribution
CREATE TABLE economic_status_distribution (
category VARCHAR(50) NOT NULL,
state VARCHAR (50) UNIQUE NOT NULL PRIMARY KEY,
less_than_1_lakh_male SMALLINT NOT NULL,
less_than_1_lakh_female SMALLINT NOT NULL,
less_than_1_lakh_transgender SMALLINT NOT NULL,
_1_lakh_and_above_less_than_5_lakhs_male SMALLINT NOT NULL,
_1_lakh_and_above_less_than_5_lakhs_female  SMALLINT NOT NULL,
_1_lakh_and_above_less_than_5_lakhs_transgender SMALLINT NOT NULL,
_5_lakhs_and_above_less_than_10_lakhs_male	SMALLINT NOT NULL,
_5_lakhs_and_above_less_than_10_lakhs_female SMALLINT NOT NULL,
_5_lakhs_and_above_less_than_10_lakhs_transgender SMALLINT NOT NULL,
_10_lakhs_and_above_male SMALLINT NOT NULL,
_10_lakhs_and_above_female SMALLINT NOT NULL,
_10_lakhs_and_above_transhgender SMALLINT NOT NULL);

SELECT * FROM economic_status_distribution

--Creating a table of education wise distribution
CREATE TABLE education_wise_distribution (
category VARCHAR(50) NOT NULL,
state VARCHAR (50) UNIQUE NOT NULL PRIMARY KEY,
no_Education_male SMALLINT NOT NULL,
no_Education_female SMALLINT NOT NULL,	
no_Education_transgender SMALLINT NOT NULL,
school_dropout_male SMALLINT NOT NULL,
school_dropout_female SMALLINT NOT NULL,
school_dropout_transgender SMALLINT NOT NULL,
higher_secondary_male SMALLINT NOT NULL,
higher_secondary_female SMALLINT NOT NULL,
higher_secondary_transgender SMALLINT NOT NULL,
graduate_and_above_male SMALLINT NOT NULL,
graduate_and_above_female SMALLINT NOT NULL,
graduate_and_above_transgender SMALLINT NOT NULL,
status_notknown_male SMALLINT NOT NULL,
status_notknown_female SMALLINT NOT NULL,
status_notknown_transgender SMALLINT NOT NULL);
	
SELECT * FROM education_wise_distribution;	
	
--Creating a table of mass_family_suicides
CREATE TABLE mass_family_suicides (
category VARCHAR(50) NOT NULL,
state VARCHAR (50) UNIQUE NOT NULL PRIMARY KEY,
cases SMALLINT NOT NULL,
married SMALLINT NOT NULL,
unmarried SMALLINT NOT NULL);	

SELECT * FROM mass_family_suicides;	

--Creating a table of means adopted distribution
CREATE TABLE means_adopted_distribution (
category VARCHAR(50) NOT NULL,
state VARCHAR (50) UNIQUE NOT NULL PRIMARY KEY,
by_consuming_sleeping_pills_male SMALLINT NOT NULL,
by_consuming_sleeping_pills_female SMALLINT NOT NULL,
by_consuming_sleeping_pills_transgender SMALLINT NOT NULL,
by_drowning_male SMALLINT NOT NULL,
by_drowning_female SMALLINT NOT NULL,
by_drowning_transgender SMALLINT NOT NULL,
by_setting_fire_male SMALLINT NOT NULL,
by_setting_fire_female SMALLINT NOT NULL,
by_setting_fire_transgender SMALLINT NOT NULL,
by_firearms_male SMALLINT NOT NULL,
by_firearms_female SMALLINT NOT NULL,
by_firearms_transgender SMALLINT NOT NULL,
by_hanging_male SMALLINT NOT NULL,
by_hanging_female SMALLINT NOT NULL,
by_hanging_transgender SMALLINT NOT NULL,
by_poison_male SMALLINT NOT NULL,
by_poison_female SMALLINT NOT NULL,
by_poison_transgender SMALLINT NOT NULL,
by_self_inflicting_injury_male SMALLINT NOT NULL,
by_self_inflicting_injury_female SMALLINT NOT NULL,
by_self_inflicting_injury_transgender SMALLINT NOT NULL,
by_jumping_male	SMALLINT NOT NULL,
by_jumping_female SMALLINT NOT NULL,
by_jumping_transgender SMALLINT NOT NULL,
by_coming_under_running_vehicles_male SMALLINT NOT NULL,
by_coming_under_running_vehicles_female SMALLINT NOT NULL,
by_coming_under_running_vehicles_transgender SMALLINT NOT NULL,	
by_touching_electric_wire_male SMALLINT NOT NULL,
by_touching_electric_wire_female SMALLINT NOT NULL,
by_touching_electric_wire_transgender SMALLINT NOT NULL,
by_other_means_male SMALLINT NOT NULL,
by_other_means_female SMALLINT NOT NULL,
by_other_means_transgender SMALLINT NOT NULL);

SELECT * FROM means_adopted_distribution;

--Creating a table of profession wise distribution
CREATE TABLE profession_wise_distribution (
category VARCHAR(50) NOT NULL,
state VARCHAR (50) UNIQUE NOT NULL PRIMARY KEY,
house_husband SMALLINT NOT NULL,
house_wife SMALLINT NOT NULL,
house_wife_transgender SMALLINT NOT NULL,
professionals_male SMALLINT NOT NULL,
professionals_female SMALLINT NOT NULL,	
professionals_transgender SMALLINT NOT NULL,
students_male SMALLINT NOT NULL,
students_female SMALLINT NOT NULL,
students_transgender SMALLINT NOT NULL,
unemployed_male SMALLINT NOT NULL,
unemployed_female SMALLINT NOT NULL,
unemployed_transgender SMALLINT NOT NULL,
self_employed_male SMALLINT NOT NULL,
self_employed_female SMALLINT NOT NULL,
self_employed_transgender SMALLINT NOT NULL,
farming_sector_male SMALLINT NOT NULL,
farming_sector_female SMALLINT NOT NULL,
farming_sector_transgender SMALLINT NOT NULL,
daily_wage_earner_male SMALLINT NOT NULL,
daily_wage_earner_female SMALLINT NOT NULL,
daily_wage_earner_transgender SMALLINT NOT NULL,
retired_persons_male SMALLINT NOT NULL,
retired_persons_female SMALLINT NOT NULL,
retired_persons_transgender SMALLINT NOT NULL,
other_persons_male SMALLINT NOT NULL,
other_persons_female SMALLINT NOT NULL,
other_persons_transgender SMALLINT NOT NULL);

SELECT * FROM profession_wise_distribution;

--Creating a table of social status distribution
CREATE TABLE social_status_distribution (
category VARCHAR(50) NOT NULL,
state VARCHAR (50) UNIQUE NOT NULL PRIMARY KEY,
un_married_male SMALLINT NOT NULL,
un_married_female SMALLINT NOT NULL,
un_married_transgender SMALLINT NOT NULL,
married_male SMALLINT NOT NULL,
married_female SMALLINT NOT NULL,
married_transgender SMALLINT NOT NULL,
widowed_male SMALLINT NOT NULL,
widowed_female SMALLINT NOT NULL,
widowed_transgender SMALLINT NOT NULL,
divorcee_male SMALLINT NOT NULL,
divorcee_female SMALLINT NOT NULL,
divorcee_transgender SMALLINT NOT NULL,
separated_male SMALLINT NOT NULL,
separated_female SMALLINT NOT NULL,
separated_transgender SMALLINT NOT NULL,
others_male SMALLINT NOT NULL,
others_female SMALLINT NOT NULL,
others_transgender SMALLINT NOT NULL,
status_not_known_male SMALLINT NOT NULL,
status_not_known_female SMALLINT NOT NULL,
status_not_known_transgender SMALLINT NOT NULL);

SELECT * FROM social_status_distribution;

--Creating a table of suicides in 2020 and 2021
CREATE TABLE suicides_2020_2021 (
category VARCHAR(50) NOT NULL,
state VARCHAR (50) UNIQUE NOT NULL PRIMARY KEY,
number_of_suicides_2020 SMALLINT NOT NULL,
number_of_suicides_2021 SMALLINT NOT NULL);

SELECT * FROM suicides_2020_2021;

SELECT * FROM social_status_distribution;

--Creating a table of age and cause distribution
CREATE TABLE age_cause_distribution (
cause VARCHAR(50) NOT NULL,
below_18_male SMALLINT NOT NULL,
below_18_female SMALLINT NOT NULL,
below_18_transgender SMALLINT NOT NULL,
between_18_and_30_male SMALLINT NOT NULL,
between_18_and_30_female SMALLINT NOT NULL,
between_18_and_30_transgender SMALLINT NOT NULL,
between_31_and_45_male SMALLINT NOT NULL,
between_31_and_45_female SMALLINT NOT NULL,
between_31_and_45_transgender SMALLINT NOT NULL,
between_45_and_59_male SMALLINT NOT NULL,
between_45_and_59_female SMALLINT NOT NULL,
between_45_and_59_transgender SMALLINT NOT NULL,
_60_and_above_male SMALLINT NOT NULL,
_60_and_above_female SMALLINT NOT NULL,
_60_and_above_transgender SMALLINT NOT NULL);
	
SELECT * FROM age_cause_distribution;

--DATA EXPLORATION

/*Let us look at states by number of suicides in decreasing order */

SELECT state, number_of_Suicides_2021 FROM suicides_2020_2021
ORDER BY number_of_Suicides_2021 DESC;

--Let us look at sum of males and females state wise

SELECT state, (less_than_1_lakh_female + _1_lakh_and_above_less_than_5_lakhs_female +
_5_lakhs_and_above_less_than_10_lakhs_female + _10_lakhs_and_above_female) AS female,
(less_than_1_lakh_male + _1_lakh_and_above_less_than_5_lakhs_male +
_5_lakhs_and_above_less_than_10_lakhs_male + _10_lakhs_and_above_male) AS male,
COALESCE(NULLIF(1000 * (less_than_1_lakh_female + _1_lakh_and_above_less_than_5_lakhs_female +
_5_lakhs_and_above_less_than_10_lakhs_female + _10_lakhs_and_above_female)/
(less_than_1_lakh_male + _1_lakh_and_above_less_than_5_lakhs_male +
_5_lakhs_and_above_less_than_10_lakhs_male + _10_lakhs_and_above_male),0),1) AS mfratio
FROM economic_status_distribution

SELECT * FROM economic_status_distribution;
--All the states has male suicides greater than female suicides

/*Let us look at order of states by number of suicides per 1000 people (as per their population)*/

ALTER TABLE state_population
ALTER COLUMN population_in_lakhs TYPE NUMERIC(6,2)

SELECT su21.state, ROUND(number_of_Suicides_2021/(population_in_lakhs*100), 2) AS pop_percent
FROM suicides_2020_2021 su21 JOIN state_population sp
ON su21.state = sp.state
ORDER BY pop_percent DESC; 

/* Decreasing order of states with highest students suicides */
SELECT state, students_male + students_female + students_transgender AS total_students
FROM profession_wise_distribution
ORDER BY total_students DESC;

/* Decreasing order of states with highest students suicides as per population.
NOTE: As this is comparative population is taken in lakhs without conversion as the number will be
too small */
SELECT pro_dis.state, 
ROUND((students_male + students_female + students_transgender) /(population_in_lakhs),2) AS stu_suicide_per_capita
FROM profession_wise_distribution pro_dis INNER JOIN state_population st_pop
ON pro_dis.state = st_pop.state
ORDER BY stu_suicide_per_capita DESC

/*Let us look at states with higher suicide rate than national suicide rate*/


SELECT state, avg_st_suicides, avg_nat_suicides
FROM (
Select sui_21.state, number_of_suicides_2021/population_in_lakhs AS avg_st_suicides, 
AVG(number_of_suicides_2021) OVER ()/AVG(population_in_lakhs) OVER () AS avg_nat_suicides
FROM suicides_2020_2021 sui_21 INNER JOIN state_population st_pop
	on sui_21.state = st_pop.state
) AS avg_calc
WHERE avg_st_suicides > avg_nat_suicides
ORDER BY avg_st_suicides - avg_nat_suicides DESC

/*Let us divid the country into six parts (north, south, east, west, central, north-east) and see the total number of 
suicides profession wise*/

SELECT DISTINCT(zone), 
SUM(house_wife) OVER (PARTITION BY zone) AS sum_house_wife,
SUM(professionals) OVER (PARTITION BY zone) AS sum_professionals,
SUM(students) OVER (PARTITION BY zone) AS sum_students,
SUM(unemployed) OVER (PARTITION BY zone) AS sum_unemployed,
SUM(self_employed) OVER (PARTITION BY zone) AS sum_self_employed,
SUM(farming_Sector) OVER (PARTITION BY zone) AS sum_farming_Sector,
SUM(daily_wage_earner) OVER (PARTITION BY zone) AS sum_daily_wage_earner,
SUM(retired_persons) OVER (PARTITION BY zone) AS sum_retired_persons,
SUM(other_persons) OVER (PARTITION BY zone) AS sum_other_persons
FROM
(
SELECT *,
CASE
WHEN state IN ('Haryana', 'Himachal Pradesh', 'Ladakh', 'Jammu and Kashmir', 'Delhi',
			'Chandigarh', 'Punjab', 'Rajasthan') THEN 'north'
WHEN state IN ('Bihar', 'Jharkhand', 'Odisha', 'West Bengal', 'Andaman and Nicobar Islands') THEN 'east'
WHEN state IN ('Andhra Pradesh', 'Telangana', 'Tamil Nadu', 'Kerala', 'Karnataka', 'Puducherry', 'Lakshadweep') THEN 'south'
WHEN state IN ('Goa', 'Gujarat', 'Maharashtra', 'Dadra and Nagar Haveli and Daman and Diu') THEN 'west'
WHEN state IN ('Uttar Pradesh', 'Chhattisgarh', 'Uttarakhand', 'Madhya Pradesh') THEN 'central'
WHEN state IN ('Assam', 'Manipur', 'Meghalaya', 'Arunachal Pradesh', 'Mizoram', 'Tripura', 'Nagaland', 'Sikkim') THEN 'ne'
END AS zone
FROM (
SELECT state, house_husband+house_wife+house_wife_transgender AS house_wife,
professionals_male + professionals_female + professionals_transgender AS professionals,
students_male+students_female + students_transgender AS students,
unemployed_male + unemployed_female + unemployed_transgender AS unemployed,
self_employed_male + self_employed_female + self_employed_transgender AS self_employed,
farming_sector_male + farming_sector_female + farming_sector_transgender AS farming_sector,
daily_wage_earner_male + daily_wage_earner_female + daily_wage_earner_transgender AS daily_wage_earner,
retired_persons_male + retired_persons_female + retired_persons_transgender AS retired_persons,
other_persons_male + other_persons_female + other_persons_transgender AS other_persons
FROM profession_wise_distribution ) AS sum_calc ) AS sum_zone_calc

/*Let us see all the states where  never married suicides are greater than married suicides*/
SELECT state FROM (
SELECT state,
un_married_male + un_married_female + un_married_transgender >
married_male + married_female + married_transgender + widowed_male + widowed_female
+ widowed_transgender + divorcee_male + divorcee_female + divorcee_transgender + separated_male
+separated_female + separated_transgender + others_male + others_female+ others_transgender 
AS married
FROM social_status_distribution) AS greater_unmarried_true_false
WHERE married = true

/*Let us see the education qualification of highest suicides in India */
SELECT  SUM(no_education_female) AS no_edu_fem, SUM(school_dropout_female) AS mid_sch_dr_out_fem, SUM(higher_secondary_female) AS high_school_fem,
SUM (graduate_and_above_female) AS grad_fem, SUM(status_notknown_female) AS status_not_known_fem
FROM education_wise_distribution

--Show all states grouped together into groups of suicides per 100000 people as less than 5, 5 to 15, 10 to 15
SELECT COUNT(state) AS count_state, block FROM
(
SELECT su21.state, number_of_suicides_2021, population_in_lakhs,
CASE WHEN FLOOR(number_of_suicides_2021/population_in_lakhs) < 5 THEN 'less than 5'
	 WHEN FLOOR(number_of_suicides_2021/population_in_lakhs) BETWEEN 6 AND 10 THEN '6 to 10'
	 WHEN FLOOR(number_of_suicides_2021/population_in_lakhs) BETWEEN 11 AND 15 THEN '11 to 15'
	 WHEN FLOOR(number_of_suicides_2021/population_in_lakhs) BETWEEN 16 AND 20 THEN '16 to 20'
	 WHEN FLOOR(number_of_suicides_2021/population_in_lakhs) BETWEEN 21 AND 25 THEN '21 to 25'
	 WHEN FLOOR(number_of_suicides_2021/population_in_lakhs) BETWEEN 26 AND 30 THEN '26 to 30'
	 WHEN FLOOR(number_of_suicides_2021/population_in_lakhs) BETWEEN 31 AND 35 THEN '31 to 35'
	 WHEN FLOOR(number_of_suicides_2021/population_in_lakhs) BETWEEN 36 AND 40 THEN '36 to 40'
	 END AS block
FROM 
suicides_2020_2021 su21 INNER JOIN state_population st_pop
ON su21.state = st_pop.state ) AS block_calc
GROUP BY block
ORDER BY count_State DESC

-- Show all the states suicides rate decreased in 2021 when compared to 2020
SELECT *, ROUND((number_of_suicides_2020-number_of_suicides_2021::DECIMAL)/number_of_suicides_2020,2) AS perc_dec 
FROM suicides_2020_2021
WHERE number_of_suicides_2020 > number_of_suicides_2021
ORDER BY perc_dec DESC

--Show the variation of suicides among transgenders state wise

SELECT state, no_education_transgender+
school_dropout_transgender + higher_secondary_transgender + 
graduate_and_above_transgender + status_notknown_transgender AS transgender_sui
FROM education_wise_distribution
WHERE no_education_transgender+
school_dropout_transgender + higher_secondary_transgender + 
graduate_and_above_transgender + status_notknown_transgender > 0
ORDER BY transgender_sui DESC

--Show female suicides in decreasing order and make sure UTs are always at top

SELECT category, state, 
house_wife + professionals_female + students_female + unemployed_female + self_employed_female
+ farming_sector_female + daily_wage_earner_female + retired_persons_female + other_persons_female As female
FROM profession_wise_distribution
ORDER BY  category DESC, female DESC

--Select all states with mass family suicides in Decreasing order
SELECT * FROM mass_family_suicides
WHERE cases > 0
ORDER BY cases DESC

/*The comprehensive data exploration and analysis conducted in SQL will 
be translated into visually insightful presentations using Power BI, 
providing a dynamic and user-friendly perspective on the findings. */