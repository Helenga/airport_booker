class Passenger < ApplicationRecord
	has_many :bookings, foreign_key: :passenger_id
	has_many :flights, through: :bookings, inverse_of: :passengers
end
