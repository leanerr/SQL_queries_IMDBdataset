select  floor(((premiered) / 10) * 10)|| 's' as decade ,count(primary_title) as num_titles
from titles
WHERE decade IS NOT NULL
group by decade
ORDER BY count(primary_title) DESC



/*2010s	1050732
2000s	494639
1990s	211453
1980s	119258
1970s	99707
1960s	75237
1950s	39554
1910s	26596
1920s	13153
1930s	11492
1940s	10011
1900s	9586
2020s	2492
1890s	2286
1880s	22
1870s	1
*/