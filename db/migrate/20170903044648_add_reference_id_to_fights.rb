class AddReferenceIdToFights < ActiveRecord::Migration[5.1]
  def change
	add_reference :airports, :flights, index: true
  end
end
