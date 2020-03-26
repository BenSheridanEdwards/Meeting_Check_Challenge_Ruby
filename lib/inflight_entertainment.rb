require 'set'

class InflightEntertainment

  def can_two_movies_fill_flight?(movie_lengths, flight_length)
    movie_lengths_seen = Set.new

    movie_lengths.each do |movie_time|
      return true if movie_lengths_seen.include?(flight_length - movie_time)
      movie_lengths_seen.add(movie_time)
    end
    return false
  end
end
