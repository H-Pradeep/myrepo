CREATE TABLE "state_population"(
    "category" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "population_in_lakhs" BIGINT NOT NULL
);
ALTER TABLE
    "state_population" ADD PRIMARY KEY("state");
CREATE TABLE "education_wise_distribution"(
    "category" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "no_Education_male" SMALLINT NOT NULL,
    "no_Education_female" SMALLINT NOT NULL,
    "no_Education_transgender" SMALLINT NOT NULL,
    "school_dropout_male" SMALLINT NOT NULL,
    "school_dropout_female" SMALLINT NOT NULL,
    "school_dropout_transgender" SMALLINT NOT NULL,
    "higher_secondary_male" SMALLINT NOT NULL,
    "higher_secondary_female" SMALLINT NOT NULL,
    "higher_secondary_transgender" SMALLINT NOT NULL,
    "graduate_and_above_male" SMALLINT NOT NULL,
    "graduate_and_above_female" SMALLINT NOT NULL,
    "graduate_and_above_transgender" SMALLINT NOT NULL,
    "status_notknown_male" SMALLINT NOT NULL,
    "status_notknown_female" SMALLINT NOT NULL,
    "status_notknown_transgender" SMALLINT NOT NULL
);
ALTER TABLE
    "education_wise_distribution" ADD PRIMARY KEY("state");
CREATE TABLE "economic_status_distribution"(
    "category" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "less_than_1_lakh_male" SMALLINT NOT NULL,
    "less_than_1_lakh_female" SMALLINT NOT NULL,
    "less_than_1_lakh_transgender" SMALLINT NOT NULL,
    "_1_lakh_and_above_less_than_5_lakhs_male" SMALLINT NOT NULL,
    "_1_lakh_and_above_less_than_5_lakhs_female" SMALLINT NOT NULL,
    "_1_lakh_and_above_less_than_5_lakhs_transgender" SMALLINT NOT NULL,
    "_5_lakhs_and_above_less_than_10_lakhs_male" SMALLINT NOT NULL,
    "_5_lakhs_and_above_less_than_10_lakhs_female" SMALLINT NOT NULL,
    "_5_lakhs_and_above_less_than_10_lakhs_transgender" SMALLINT NOT NULL,
    "_10_lakhs_and_above_male" SMALLINT NOT NULL,
    "_10_lakhs_and_above_female" SMALLINT NOT NULL,
    "_10_lakhs_and_above_transhgender" SMALLINT NOT NULL
);
ALTER TABLE
    "economic_status_distribution" ADD PRIMARY KEY("state");
CREATE TABLE "suicides_2020_2021"(
    "category" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "number_of_suicides_2020" SMALLINT NOT NULL,
    "number_of_suicides_2021" SMALLINT NOT NULL
);
ALTER TABLE
    "suicides_2020_2021" ADD PRIMARY KEY("state");
CREATE TABLE "mass_family_suicides"(
    "category" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "cases" SMALLINT NOT NULL,
    "married" SMALLINT NOT NULL,
    "unmarried" SMALLINT NOT NULL
);
ALTER TABLE
    "mass_family_suicides" ADD PRIMARY KEY("state");
CREATE TABLE "age_cause_distribution"(
    "cause" VARCHAR(255) NOT NULL,
    "below_18_male" SMALLINT NOT NULL,
    "below_18_female" SMALLINT NOT NULL,
    "below_18_transgender" SMALLINT NOT NULL,
    "between_18_and_30_male" SMALLINT NOT NULL,
    "between_18_and_30_female" SMALLINT NOT NULL,
    "between_18_and_30_transgender" SMALLINT NOT NULL,
    "between_31_and_45_male" SMALLINT NOT NULL,
    "between_31_and_45_female" SMALLINT NOT NULL,
    "between_31_and_45_transgender" SMALLINT NOT NULL,
    "between_45_and_59_male" SMALLINT NOT NULL,
    "between_45_and_59_female" SMALLINT NOT NULL,
    "between_45_and_59_transgender" SMALLINT NOT NULL,
    "_60_and_above_male" SMALLINT NOT NULL,
    "_60_and_above_female" SMALLINT NOT NULL,
    "_60_and_above_transgender" SMALLINT NOT NULL
);
ALTER TABLE
    "age_cause_distribution" ADD PRIMARY KEY("cause");
CREATE TABLE "social_status_distribution"(
    "category" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "un_married_male" SMALLINT NOT NULL,
    "un_married_female" SMALLINT NOT NULL,
    "un_married_transgender" SMALLINT NOT NULL,
    "married_male" SMALLINT NOT NULL,
    "married_female" SMALLINT NOT NULL,
    "married_transgender" SMALLINT NOT NULL,
    "widowed_male" SMALLINT NOT NULL,
    "widowed_female" SMALLINT NOT NULL,
    "widowed_transgender" SMALLINT NOT NULL,
    "divorcee_male" SMALLINT NOT NULL,
    "divorcee_female" SMALLINT NOT NULL,
    "divorcee_transgender" SMALLINT NOT NULL,
    "separated_male" SMALLINT NOT NULL,
    "separated_female" SMALLINT NOT NULL,
    "separated_transgender" SMALLINT NOT NULL,
    "others_male" SMALLINT NOT NULL,
    "others_female" SMALLINT NOT NULL,
    "others_transgender" SMALLINT NOT NULL,
    "status_not_known_male" SMALLINT NOT NULL,
    "status_not_known_female" SMALLINT NOT NULL,
    "status_not_known_transgender" SMALLINT NOT NULL
);
ALTER TABLE
    "social_status_distribution" ADD PRIMARY KEY("state");
CREATE TABLE "table_6profession_wise_distribution"(
    "category" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "house_husband" SMALLINT NOT NULL,
    "house_wife" SMALLINT NOT NULL,
    "house_wife_transgender" SMALLINT NOT NULL,
    "professionals_male" SMALLINT NOT NULL,
    "professionals_female" SMALLINT NOT NULL,
    "professionals_transgender" SMALLINT NOT NULL,
    "students_male" SMALLINT NOT NULL,
    "students_female" SMALLINT NOT NULL,
    "students_transgender" SMALLINT NOT NULL,
    "unemployed_male" SMALLINT NOT NULL,
    "unemployed_female" SMALLINT NOT NULL,
    "unemployed_female" SMALLINT NOT NULL,
    "self_employed_male" SMALLINT NOT NULL,
    "self_employed_female" SMALLINT NOT NULL,
    "self_employed_transgender" SMALLINT NOT NULL,
    "farming_sector_male" SMALLINT NOT NULL,
    "farming_sector_female" SMALLINT NOT NULL,
    "farming_sector_transgender" SMALLINT NOT NULL,
    "daily_wage_earner_male" SMALLINT NOT NULL,
    "daily_wage_earner_female" SMALLINT NOT NULL,
    "daily_wage_earner_transgender" SMALLINT NOT NULL,
    "retired_persons_male" SMALLINT NOT NULL,
    "retired_persons_female" SMALLINT NOT NULL,
    "retired_persons_transgender" SMALLINT NOT NULL,
    "other_persons_male" SMALLINT NOT NULL,
    "other_persons_female" SMALLINT NOT NULL,
    "other_persons_transgender" SMALLINT NOT NULL
);
ALTER TABLE
    "table_6profession_wise_distribution" ADD PRIMARY KEY("state");
CREATE TABLE "means_adopted_distribution"(
    "category" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "by_consuming_sleeping_pills_male" SMALLINT NOT NULL,
    "by_consuming_sleeping_pills_female" SMALLINT NOT NULL,
    "by_consuming_sleeping_pills_transgender" SMALLINT NOT NULL,
    "by_drowning_male" SMALLINT NOT NULL,
    "by_drowning_female" SMALLINT NOT NULL,
    "by_drowning_transgender" SMALLINT NOT NULL,
    "by_setting_fire_male" SMALLINT NOT NULL,
    "by_setting_fire_female" SMALLINT NOT NULL,
    "by_setting_fire_transgender" SMALLINT NOT NULL,
    "by_firearms_male" SMALLINT NOT NULL,
    "by_firearms_female" SMALLINT NOT NULL,
    "by_firearms_transgender" SMALLINT NOT NULL,
    "by_hanging_male" SMALLINT NOT NULL,
    "by_hanging_female" SMALLINT NOT NULL,
    "by_hanging_transgender" SMALLINT NOT NULL,
    "by_poison_male" SMALLINT NOT NULL,
    "by_poison_female" SMALLINT NOT NULL,
    "by_poison_transgender" SMALLINT NOT NULL,
    "by_self_inflicting_injury_male" SMALLINT NOT NULL,
    "by_self_inflicting_injury_female" SMALLINT NOT NULL,
    "by_self_inflicting_injury_transgender" SMALLINT NOT NULL,
    "by_jumping_male" SMALLINT NOT NULL,
    "by_jumping_female" SMALLINT NOT NULL,
    "by_jumping_transgender" SMALLINT NOT NULL,
    "by_coming_under_running_vehicles_male" SMALLINT NOT NULL,
    "by_coming_under_running_vehicles_female" SMALLINT NOT NULL,
    "by_coming_under_running_vehicles_transgender" SMALLINT NOT NULL,
    "by_touching_electric_wire_male" SMALLINT NOT NULL,
    "by_touching_electric_wire_female" SMALLINT NOT NULL,
    "by_touching_electric_wire_transgender" SMALLINT NOT NULL,
    "by_other_means_male" SMALLINT NOT NULL,
    "by_other_means_female" SMALLINT NOT NULL,
    "by_other_means_transgender" SMALLINT NOT NULL
);
ALTER TABLE
    "means_adopted_distribution" ADD PRIMARY KEY("state");
ALTER TABLE
    "state_population" ADD CONSTRAINT "state_population_state_foreign" FOREIGN KEY("state") REFERENCES "economic_status_distribution"("state");
ALTER TABLE
    "mass_family_suicides" ADD CONSTRAINT "mass_family_suicides_state_foreign" FOREIGN KEY("state") REFERENCES "social_status_distribution"("state");
ALTER TABLE
    "state_population" ADD CONSTRAINT "state_population_state_foreign" FOREIGN KEY("state") REFERENCES "mass_family_suicides"("state");
ALTER TABLE
    "education_wise_distribution" ADD CONSTRAINT "education_wise_distribution_state_foreign" FOREIGN KEY("state") REFERENCES "means_adopted_distribution"("state");
ALTER TABLE
    "state_population" ADD CONSTRAINT "state_population_state_foreign" FOREIGN KEY("state") REFERENCES "suicides_2020_2021"("state");
ALTER TABLE
    "means_adopted_distribution" ADD CONSTRAINT "means_adopted_distribution_state_foreign" FOREIGN KEY("state") REFERENCES "table_6profession_wise_distribution"("state");
ALTER TABLE
    "economic_status_distribution" ADD CONSTRAINT "economic_status_distribution_state_foreign" FOREIGN KEY("state") REFERENCES "education_wise_distribution"("state");