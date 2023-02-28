class AddAirportIdToMeetup < ActiveRecord::Migration[7.0]
  def change
    add_column :meetups, :airport_id, :integer
  end
end
