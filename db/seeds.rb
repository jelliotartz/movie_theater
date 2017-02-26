# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = Movie.create([
    { title: "Manchester by the Sea", auditorium_id: 5, showtime_id: 2 },
    { title: "Fences", auditorium_id: 3, showtime_id: 1 },
    { title: "Hidden Figures", auditorium_id: 1, showtime_id: 3 },
    { title: "Moonlight", auditorium_id: 2, showtime_id: 4 },
    { title: "The Last Emperor", auditorium_id: 1, showtime_id: 3 }
  ])

auditoria = Auditorium.create([
    { title: "Auditorium 1", capacity: 50 },
    { title: "Auditorium 2", capacity: 100 },
    { title: "Auditorium 3", capacity: 25 },
    { title: "Auditorium 4", capacity: 200 },
    { title: "Auditorium 5", capacity: 10 }
  ])

showtimes = Showtime.create([
    { time: Time.zone.now + 1.day + 1.hour },
    { time: Time.zone.now + 4.days + 6.hours },
    { time: Time.zone.now + 3.day + 12.hours },
    { time: Time.zone.now + 2.day + 4.hours }
  ])
