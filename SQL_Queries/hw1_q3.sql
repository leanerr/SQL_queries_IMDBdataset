select type ,count(primary_title)
from titles
group by type 
order by count(primary_title) 


/*
tvShort	4075
videoGame	9044
tvSpecial	9107
tvMiniSeries	10291
tvMovie	45431
tvSeries	63631
video	90069
movie	197957
short	262038
tvEpisode	1603076*/