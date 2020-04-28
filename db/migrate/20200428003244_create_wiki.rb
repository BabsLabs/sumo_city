class CreateWiki < ActiveRecord::Migration[6.0]
  def change
    create_table :wikis do |t|
      t.string :english_name
      t.string :japanese_name
      t.string :definition
      t.timestamps
    end
  end
end
