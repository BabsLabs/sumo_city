class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.string :english_name
      t.string :japanese_name
      t.string :definition
      t.timestamps
    end
  end
end
