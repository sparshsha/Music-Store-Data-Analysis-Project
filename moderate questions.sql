select email, first_name, last_name 
from customer 
join invoice on customer.customer_id = invoice.customer_id
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where track_id in(
	select track_id from track
    join genre on track.genre_id = genre.genre_id
    where genre.name = 'rock'
)
order by email;

select artist.artist_id, artist.name, count(artist.artist_id) as number_of_songs
from track
join album2 on album2.album_id = track.album_id
join artist on album2.artist_id = album2.artist_id
join genre on genre.genre_id = track.genre_id
where genre.name = 'ROCK'
group by artist.artist_id
order by number_of_songs desc
limit 10;

select name, milliseconds
from track;
where milliseconds > (
	select avg(milliseconds) as avg_track_length
    from track)
    order by milliseconds desc;
    

