CREATE TABLE PRISONER_DETAILS(
prisoner_ID INT PRIMARY KEY NOT NULL,
fiscal_year_released varchar,
release_type varchar,
age_at_release varchar,
main_suprevising_district varchar,
race_ethnicity varchar,
sex varchar );

CREATE TABLE OFFENCE_TYPE(
	prisoner_id int NOT NULL,
	offense_classification varchar,
	offense_type varchar,
	offense_subtype varchar,
	FOREIGN KEY (prisoner_id) REFERENCES PRISONER_DETAILS (prisoner_id)
);

CREATE TABLE RECIDIVSM_DETAILS(
	prisoner_ID int NOT NULL,
    recidivism_reporting_year date,
	days_to_return varchar,
	recidivism_type varchar,
	new_offense_classification varchar,
	new_offense_type varchar,
	new_offense_subtype varchar,
	target_population varchar,
	return_to_prison varchar,
	FOREIGN KEY (prisoner_id) REFERENCES PRISONER_DETAILS (prisoner_id)
);

SELECT * FROM PRISONER_DETAILS;

SELECT * FROM RECIDIVSM_DETAILS;

SELECT * FROM PRISONERS;

CREATE TABLE PRISONERS(
	prisoner_ID INT PRIMARY KEY NOT NULL,
fiscal_year_released varchar,
release_type varchar,
age_at_release varchar,
main_suprevising_district varchar,
race_ethnicity varchar,
sex varchar,
prisoner_id int NOT NULL,
	offense_classification varchar,
	offense_type varchar,
	offense_subtype varchar,
					   prisoner_ID int NOT NULL,
    recidivism_reporting_year date,
	days_to_return varchar,
	recidivism_type varchar,
	new_offense_classification varchar,
	new_offense_type varchar,
	new_offense_subtype varchar,
	target_population varchar,
	return_to_prison varchar
					   );

    SELECT * FROM PRISONERS;