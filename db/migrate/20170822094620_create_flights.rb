class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :route
      t.datetime :departure

      t.timestamps
    end
  end
end
