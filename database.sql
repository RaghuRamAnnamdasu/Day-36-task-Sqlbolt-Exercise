/*Question-01*/

/*Query-1*/ - SELECT title FROM movies
/*Query-2*/ - SELECT director FROM movies
/*Query-3*/ - SELECT title,director FROM movies
/*Query-4*/ - SELECT title,year FROM movies
/*Query-5*/ - SELECT * FROM movies


/*Question-02*/

/*Query-1*/ - SELECT * FROM movies WHERE id=6;
/*Query-2*/ - SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;
/*Query-3*/ - SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;
/*Query-4*/ - SELECT title,year FROM movies WHERE id IN (1,2,3,4,5); 


/*Question-03*/

/*Query-1*/ - SELECT * FROM movies WHERE title LIKE "%Toy Story%";
/*Query-2*/ - SELECT * FROM movies WHERE director = "John Lasseter";
/*Query-3*/ - SELECT * FROM movies WHERE director != "John Lasseter";
/*Query-4*/ - SELECT * FROM movies WHERE title LIKE "%WALL-%";


/*Question-04*/

/*Query-1*/ - SELECT DISTINCT director FROM movies ORDER BY director;
/*Query-2*/ - SELECT * FROM movies ORDER BY year DESC LIMIT 4;
/*Query-3*/ - SELECT * FROM movies ORDER BY title LIMIT 5;
/*Query-4*/ - SELECT * FROM movies ORDER BY title LIMIT 5 OFFSET 5;


/*Question-05*/

/*Query-1*/ - SELECT city,population FROM north_american_cities WHERE country = "Canada";
/*Query-2*/ - SELECT * FROM north_american_cities WHERE country = "United States" ORDER BY latitude DESC;
/*Query-3*/ - SELECT * FROM north_american_cities WHERE longitude < -87.629798 ORDER BY longitude;
/*Query-4*/ - SELECT * FROM north_american_cities WHERE country = "Mexico" ORDER BY population DESC Limit 2;
/*Query-5*/ - SELECT * FROM north_american_cities WHERE country = "United States" ORDER BY population DESC Limit 2 OFFSET 2;



/*Question-06*/

/*Query-1*/ 
SELECT * FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

/*Query-2*/
SELECT * FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

/*Query-3*/
SELECT * FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;



/*Question-07*/

/*Query-1*/ 
SELECT DISTINCT building FROM employees

/*Query-2*/
SELECT * FROM buildings;

/*Query-3*/
SELECT DISTINCT building_name,role FROM buildings
LEFT JOIN employees
    ON building_name = building;



/*Question-08*/

/*Query-1*/ 
SELECT name,role FROM employees
WHERE building IS NULL;

/*Query-2*/
SELECT building_name FROM buildings
LEFT JOIN employees
    ON building_name = building
WHERE role & name IS NULL;




/*Question-09*/

/*Query-1*/ 
SELECT title, (Domestic_sales+International_sales)/1000000 AS combined_sales FROM movies
LEFT JOIN boxoffice
    ON id = movie_id;

/*Query-2*/
SELECT title, rating*10 AS rating_in_percentage FROM movies
LEFT JOIN boxoffice
    ON id = movie_id;


/*Query-3*/
SELECT title FROM movies
LEFT JOIN boxoffice
    ON id = movie_id
WHERE year%2=0;




/*Question-10*/

/*Query-1*/
SELECT max(years_employed) FROM employees;

/*Query-2*/ 
SELECT role, AVG(Years_employed) FROM employees
GROUP BY role;

/*Query-3*/ 
SELECT building, SUM(Years_employed) FROM employees
GROUP BY building;



/*Question-11*/

/*Query-1*/
SELECT COUNT(role) FROM employees;

/*Query-2*/ 
SELECT role,COUNT(role) FROM employees
GROUP BY role;

/*Query-3*/ 
SELECT role, SUM(years_employed) FROM employees
WHERE role="Engineer";




/*Question-12*/

/*Query-1*/
SELECT director, COUNT(director) AS No_of_Movies FROM movies
GROUP BY director;

/*Query-2*/ 
SELECT director, SUM(domestic_sales+international_sales) AS Total_Sales FROM movies
LEFT JOIN boxoffice
    ON id = movie_id
GROUP BY director;




/*Question-13*/

/*Query-1*/
INSERT INTO movies
VALUES(4,"Toy Story 4","Raghuram",2022,120);

/*Query-2*/ 
INSERT INTO boxoffice
VALUES(4,8.7,340*1000000,270*1000000);



/*Question-14*/

/*Query-1*/
UPDATE movies
SET director = "John Lasseter"
WHERE id = 2;

/*Query-2*/ 
UPDATE movies
SET year = 1999
WHERE id = 3;

/*Query-3*/ 
UPDATE movies
SET title= "Toy Story 3", director = "Lee Unkrich"
WHERE id = 11;



/*Question-15*/

/*Query-1*/
DELETE FROM movies
WHERE year < 2005;

/*Query-2*/ 
DELETE FROM movies
WHERE director = "Andrew Stanton";



/*Question-16*/

/*Query-1*/ 
CREATE TABLE database(
Name TEXT,
Version FLOAT,
Download_count NUMBER
);



/*Question-17*/

/*Query-1*/
ALTER TABLE movies
ADD Aspect_ratio FLOAT;

/*Query-2*/
ALTER TABLE movies
ADD Language TEXT DEFAULT English;




/*Question-18*/

/*Query-1*/
DROP TABLE movies;

/*Query-2*/
DROP TABLE boxoffice;


