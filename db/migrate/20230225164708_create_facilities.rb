class CreateFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :facilities do |t|
      t.string :title
      t.references :airport, null: false, foreign_key: true
      t.references :facility_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
