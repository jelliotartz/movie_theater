module MoviesHelper
  def showtime_formatter(time)
    time.strftime("%A %b %-d, %I:%M%P")
  end

  def movie_auditorium(movie, showtime)
    movie.showtimes.find(showtime.id).auditorium.title
  end

  def movie_auditorium_capacity(movie, showtime)
    movie.showtimes.find(showtime.id).auditorium.capacity
  end

  def sold_out?(counter, capacity)
    counter >= capacity ? true : false
  end

  def seats_remaining(counter, capacity)
    capacity - counter
  end
end
