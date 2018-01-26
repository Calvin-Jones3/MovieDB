CREATE PROCEDURE `HandicapShows` ()
BEGIN
select m.Title, s.StartTime
from movies m inner join screenings s
on m.ID = s.MovieID
where s.theaterID in
(select ScreenNumber from theaters where HandicapAccess = 1)
order by m.title ASC;
END
