class CreateTips < ActiveRecord::Migration[7.0]
  def change
    create_table :tips do |t|
      t.string :title
      t.text :content
      t.integer :likes
      t.references :user, null: false, foreign_key: true
      t.references :tip_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
