class CreateMeetupCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :meetup_categories do |t|
      t.string :meetup_topic
      t.string :meetup_type

      t.timestamps
    end
  end
end
