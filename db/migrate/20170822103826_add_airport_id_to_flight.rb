class AddAirportIdToFlight < ActiveRecord::Migration[5.1]
  def change
			
	add_column :flights, :from_airport_id, :integer
	add_foreign_key	:flights, :airports,
			column: :from_airport_id, primary_key: :id
	add_column :flights, :to_airport_id, :integer
	add_foreign_key :flights, :airports,
			column: :to_airport_id, primary_key: :id
  end
end
