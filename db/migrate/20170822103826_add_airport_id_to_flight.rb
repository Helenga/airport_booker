class AddAirportIdToFlight < ActiveRecord::Migration[5.1]
  def change
	add_foreign_key :flights, :airports, 
			column: :from_airport_id
	add_foreign_key :flights, :airports, 
			column: :to_airport_id
  end
end
