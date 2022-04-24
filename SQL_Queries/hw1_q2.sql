select primary_title,runtime_minutes,type
from titles
Group By type
having (runtime_minutes) = (select MAX(runtime_minutes))
Order BY type , primary_title ASC



/*
Logistics	51420	movie
Kuriocity	461	short
Téléthon 2012	1800	tvEpisode
Kôya no yôjinbô	1755	tvMiniSeries
ArtQuench Presents Spirit Art	2112	tvMovie
The Sharing Circle	8400	tvSeries
Paul McCartney Backstage at Super Bowl XXXIX	60	tvShort
Katy Perry Live: Witness World Wide	5760	tvSpecial
Midnight Movie Madness: 50 Movie Mega Pack	5135	video
Flushy Fish VR: Just Squidding Around	1500	videoGame
*/