class AddAirportIdToFlight < ActiveRecord::Migration[5.1]
  def change
	add_reference :flights, :from_airport, foreign_key: true
	add_reference :flights, :to_airport, foreign_key: true
  end
end
