# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

auditorium_number = [
  "Auditorium 1",
  "Auditorium 2",
  "Auditorium 3",
  "Auditorium 4",
  "Auditorium 5"
]

capacity = [50, 100, 25, 200, 10]

auditorium_number.each_with_index do |auditorium_title, i|
  Auditorium.find_or_create_by!(title: auditorium_title) do |auditorium|
    auditorium.capacity = capacity[i]
  end
end

titles = [
  "Manchester by the Sea",
  "Fences",
  "Hidden Figures",
  "Moonlight",
  "The Last Emperor"
]

titles.each do |title|
  Movie.find_or_create_by!(title: title)
end

movies = Movie.all
auditoria = Auditorium.all

20.times do
  day = rand(1..100)
  hour = rand(1..12)
  Showtime.create(time: Time.zone.now + day.days + hour.hours, movie: movies.sample, auditorium: auditoria.sample)
end


