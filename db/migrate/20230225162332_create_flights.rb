class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.time :departure_time
      t.string :flight_destination
      t.string :flight_status
      t.string :gate_number, default: "TBC", null: false
      t.time :gate_open_time
      t.references :airport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
