class AddAirportIdToTips < ActiveRecord::Migration[7.0]
  def change
    add_column :tips, :airport_id, :integer
  end
end
