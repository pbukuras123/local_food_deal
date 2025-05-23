class CreateDeals < ActiveRecord::Migration[8.0]
  def change
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.string :restaurant
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
