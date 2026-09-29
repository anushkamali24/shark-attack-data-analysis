-- 1. Annual Trends Since 1900
SELECT Year, COUNT(*) AS Total_Attacks
FROM shark_attacks
GROUP BY Year
ORDER BY Year ASC;

-- 2. Top Countries Reporting Attacks
SELECT Country, COUNT(*) AS Total_Attacks
FROM shark_attacks
WHERE Country IS NOT NULL AND Country != ''
GROUP BY Country
ORDER BY Total_Attacks DESC
LIMIT 10;

-- 3. Top Dangerous Areas Within Top Countries
SELECT Country, Area, COUNT(*) AS Total_Attacks
FROM shark_attacks
WHERE Country IN ('USA', 'AUSTRALIA', 'SOUTH AFRICA')
  AND Area IS NOT NULL AND Area != ''
GROUP BY Country, Area
ORDER BY Total_Attacks DESC
LIMIT 15;

-- 4. Most Frequent Body Parts Injured
SELECT Body_Part_Injured, COUNT(*) AS Total_Incidents
FROM shark_attacks
WHERE Body_Part_Injured IS NOT NULL
GROUP BY Body_Part_Injured
ORDER BY Total_Incidents DESC;

-- 5. Incidents by Time of Day
SELECT Time_Category, COUNT(*) AS Total_Attacks
FROM shark_attacks
WHERE Time_Category != 'Unknown'
GROUP BY Time_Category
ORDER BY Total_Attacks DESC;

-- 6. Top Attacking Shark Species
SELECT Clean_Species, COUNT(*) AS Total_Attacks
FROM shark_attacks
WHERE Clean_Species != 'Unidentified / Other'
GROUP BY Clean_Species
ORDER BY Total_Attacks DESC;