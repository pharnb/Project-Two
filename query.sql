--DELETE FROM worldpop;
--select * from worldpop;
--select * from wine_data;
/*
CREATE TABLE wine_data (
  country VARCHAR,
  designation VARCHAR,
  province VARCHAR,
  title VARCHAR,
  variety VARCHAR,
  pricing VARCHAR
);
*//*
DROP TABLE worldpop;
CREATE TABLE worldpop (
  country VARCHAR,
  population VARCHAR,
  land_area INT,
  density INT,
  world_percentage REAL,
  median_age INT
);
*/
--error SQL state: 42701 
ALTER TABLE worldpop RENAME COLUMN country TO worldcountry;

DROP TABLE joined_table;
CREATE TABLE joined_table
AS (SELECT *
    FROM wine_data 
	INNER JOIN worldpop
	ON wine_data.country = worldpop.worldcountry
   );

--dropped more columns
ALTER TABLE joined_table DROP COLUMN worldcountry;
ALTER TABLE joined_table DROP COLUMN land_area;
ALTER TABLE joined_table DROP COLUMN density;
ALTER TABLE joined_table DROP COLUMN world_percentage;
ALTER TABLE joined_table DROP COLUMN province;

select * from joined_table;
