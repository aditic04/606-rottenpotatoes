# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: "My Neighbor Totoro", rating: "G",
    release_date: "16-Apr-1988" },
  { title: "Green Book", rating: "PG-13",
    release_date: "16-Nov-2018" },
  { title: "Parasite", rating: "R",
    release_date: "30-May-2019" },
  { title: "Nomadland", rating: "R",
    release_date: "19-Feb-2021" },
  { title: "CODA", rating: "PG-13",
    release_date: "13-Aug-2021" },
  { title: "Interstellar", rating: "PG-13",
    release_date: "07-Nov-2014" },
  { title: "The Dark Knight", rating: "PG-13",
    release_date: "18-Jul-2008" },
  { title: "The Truman Show", rating: "PG",
    release_date: "05-Jun-1998" }
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) do |new_movie|
    new_movie.rating = movie[:rating]
    new_movie.release_date = movie[:release_date]
  end
end
