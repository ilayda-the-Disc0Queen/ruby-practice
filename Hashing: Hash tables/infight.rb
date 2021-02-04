require 'set'
def two_films?(flight_length, movie_lengths)
  all_films = movie_lengths.to_set
  movie_lengths.each do |movie_length|
    if all_films.include?(flight_length - movie_length)
      puts true
    end
  end
end

# two_films?(9, [1, 2, 4, 3, 5, 8])

def can_watch_two_films_on_flight?(flight_length, movie_lengths)
  movie_lengths_seen = Set.new
  movie_lengths.any? do |first_movie_length| # returns true if there exists at least one element that satisfies block
    matching_second_movie_length = flight_length - first_movie_length
    if movie_lengths_seen.include?(matching_second_movie_length) # O(1)
      true
    else
      movie_lengths_seen.add(first_movie_length)
      false
    end
  end
end

can_watch_two_films_on_flight?(9, [1, 2, 4, 3, 5, 8])
