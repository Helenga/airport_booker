# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	
	10.times do
		i = rand(100..999)
		Airport.create!(name: "Airport_#{i}")
	end
	time = Time.now
	10.times do
		 time += 1.day
		5.times do
			r = rand(90000000..999999999)
			time += 5.hour
			from = rand(1..10)
			to = rand(1..10)
			to == from ? to = rand(1..10) : to
			Flight.create!(route: "r_#{r}", departure: time, from_airport_id: from, to_airport_id: to)
		end
	end
