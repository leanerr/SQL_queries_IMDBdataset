SELECT  primary_title,COUNT(*) as num_dubs
FROM akas
INNER JOIN titles ON titles.title_id = akas.title_id
group by akas.title_id
ORDER BY COUNT(*) DESC
LIMIT 10

/*
Mutant Virus: Vol. 1	126
The Good, the Bad and the Ugly	73
Star Wars: Episode V - The Empire Strikes Back	71
Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb	68
Raiders of the Lost Ark	62
Star Wars: Episode VII - The Force Awakens	62
The Shawshank Redemption	61
Once Upon a Time in the West	60
Indiana Jones and the Kingdom of the Crystal Skull	60
Airplane!	59
*/