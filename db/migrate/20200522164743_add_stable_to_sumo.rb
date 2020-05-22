class AddStableToSumo < ActiveRecord::Migration[6.0]
  def change
    add_reference :sumos, :stable, null: false, foreign_key: true
  end
end
  