/*The results of a MySQL query can be placed into a CSV file using the following query:*/
INTO OUTFILE 'file_path'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
/*To include header write another query before the “main” query. It returns the header, and the “main” query returns the data. Union joins them together*/
SELECT 'COLUMN1_NAME', 'COLUMN2_NAME'
UNION
/*… Your MySQL query here;*/