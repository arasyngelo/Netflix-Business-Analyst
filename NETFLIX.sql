-- See all data
SELECT * FROM NETFLIX;

-- Who is win between TV Show or Movie
SELECT release_year, 
       type, 
       COUNT(*) AS total
FROM netflix
GROUP BY release_year, type
ORDER BY release_year;

-- Which country donate content to Netflix 10
SELECT * FROM (
  SELECT country, COUNT(*) AS jumlah
  FROM netflix
  WHERE country IS NOT NULL
  GROUP BY country
  ORDER BY jumlah DESC
)
WHERE ROWNUM <= 10;

SELECT 
  ROUND(COUNT(CASE WHEN country = 'United States' THEN 1 END) * 100.0 / COUNT(*), 2) AS persen_amerika
FROM netflix;

-- which genre most on Netflix
SELECT * FROM (
    SELECT LIESTED_IN, COUNT(*) AS TOTAL
    FROM netflix
    GROUP BY LIESTED_IN
    ORDER BY TOTAL DESC
)
WHERE ROWNUM <= 10;

-- IS THE CONTENT FOR ADULT?
SELECT 
  CASE 
    WHEN rating IN ('TV-MA', 'R') THEN 'Dewasa'
    WHEN rating IN ('TV-PG', 'PG-13') THEN 'Remaja'
    WHEN rating IN ('TV-Y', 'G') THEN 'Anak-anak'
    ELSE 'Lainnya'
  END AS kategori_usia,
  COUNT(*) AS total
FROM netflix
GROUP BY 
  CASE 
    WHEN rating IN ('TV-MA', 'R') THEN 'Dewasa'
    WHEN rating IN ('TV-PG', 'PG-13') THEN 'Remaja'
    WHEN rating IN ('TV-Y', 'G') THEN 'Anak-anak'
    ELSE 'Lainnya'
  END;


-- DURATION
SELECT * FROM (
    SELECT DURATION, COUNT(*) AS TOTAL
    FROM NETFLIX
    WHERE TYPE = 'Movie'
    GROUP BY DURATION
    ORDER BY TOTAL DESC
)
WHERE ROWNUM <= 10;

-- 
SELECT RELEASE_YEAR, type, COUNT(TYPE) AS TOTAL
    FROM NETFLIX
    WHERE RELEASE_YEAR >= 2011
    GROUP BY RELEASE_YEAR, type
    ORDER BY RELEASE_YEAR;

-- WHO MOST ON NETFLIX BETWEEN TV SHOW AND MOVIE FROM 2011 - NOW
SELECT TYPE, COUNT(TYPE) AS TOTAL
FROM NETFLIX 
WHERE RELEASE_YEAR >= 2011
GROUP BY TYPE;

-- NULL CHECK
SELECT 
  COUNT(*) AS TOTAL_DATA,
  SUM(CASE WHEN director IS NULL THEN 1 ELSE 0 END) AS WITHOUT_DIRECTOR,
  SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS WITHOUT_COUNTRY
FROM netflix;
