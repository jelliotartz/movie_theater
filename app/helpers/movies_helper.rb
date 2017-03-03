module MoviesHelper

  # formats the day and time format for showtimes
  def showtime_formatter(time)
    time.strftime("%A %b %-d, %I:%M%P")
  end

  # returns the auditorium that a movie is playing in for a particular showtime
  def movie_auditorium(movie, showtime)
    movie.showtimes.find(showtime.id).auditorium.title
  end

  # returns the capacity of the auditorium for a particular showtime
  def movie_auditorium_capacity(movie, showtime)
    movie.showtimes.find(showtime.id).auditorium.capacity
  end

  # returns true if the capacity of an auditorium is less than the number of tickets sold
  def sold_out?(counter, capacity)
    counter >= capacity ? true : false
  end

  # returns the number of seats remaining before a showtime is sold out
  def seats_remaining(counter, capacity)
    capacity - counter
  end
end
