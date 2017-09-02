class Flight < ApplicationRecord
	belongs_to :from_airport, class_name: 'Airport'
	belongs_to :to_airport, class_name: 'Airport'
	
	has_many :bookings, foreign_key: :flight_id
	has_many :passengers, through: :bookings, inverse_of: :flights
	accepts_nested_attributes_for :passengers
	
	def info
		"Flight № #{self.route}
		from #{Flight.airport_name(self.from_airport)} to 
		#{Flight.airport_name(self.to_airport)} leaves on 
		#{self.departure.to_date} at 
		#{self.departure.strftime("%H:%M")}"
	end
	
	def self.airport_name(id)
		airport = Airport.find_by_id(id)
		airport.name
	end
end
