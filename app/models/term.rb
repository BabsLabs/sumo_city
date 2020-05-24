class Term < ApplicationRecord
  validates_presence_of(:english_name, :japanese_name, :definition, on: [:create, :update])
end
