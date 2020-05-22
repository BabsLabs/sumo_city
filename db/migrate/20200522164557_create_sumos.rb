class CreateSumos < ActiveRecord::Migration[6.0]
  def change
    create_table :sumos do |t|
      t.string :name
      t.string :heya
      t.string :full_name
      t.string :ring_name
      t.string :rank
      t.string :date_of_birth
      t.string :year_of_birth
      t.string :place_of_birth
      t.string :height
      t.string :weight
      t.string :favorite_techniques
      t.timestamps
    end
  end
end
