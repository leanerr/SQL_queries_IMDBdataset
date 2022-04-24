select  
floor(((premiered) / 10) * 10)|| 's' as decades ,
ROUND((((count(premiered))*1.0)/((SELECT COUNT(*) FROM titles)*1.0)),6)*100 as percent
from titles    
WHERE decades IS NOT NULL
group by decades
ORDER BY percent DESC


/*
2010s	45.7891
2000s	21.5555
1990s	9.2148
1980s	5.1971
1970s	4.3451
1960s	3.2787
1950s	1.7237
1910s	1.159
1920s	0.5732
1930s	0.5008
1940s	0.4363
1900s	0.4177
2020s	0.1086
1890s	0.0996
1880s	0.001
1870s	0
*/