class CreateStables < ActiveRecord::Migration[6.0]
  def change
    create_table :stables do |t|
      t.string :title
      t.string :ichimon
      t.string :founded
      t.string :address
      t.string :address_jp
      t.string :phone
      t.string :closest_stations
      t.string :website
      t.string :hexcolor
      t.string :description
      t.float :lon
      t.float :lat
      t.string :other_info
    end
  end
end
