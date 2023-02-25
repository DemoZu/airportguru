class CreateMeetups < ActiveRecord::Migration[7.0]
  def change
    create_table :meetups do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :meetup_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
