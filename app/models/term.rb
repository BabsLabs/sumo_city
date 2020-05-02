class Term < ApplicationRecord
  before_validation :format_name

  validates_presence_of(:english_name, :japanese_name, on: [:create, :update])
  validates_presence_of(:english_name, :japanese_name, :definition, on: :update)
  
  private 

    def format_name
        self.english_name = self.english_name.lstrip.capitalize if english_name.present?
        self.japanese_name = self.japanese_name.gsub(/[()]/, "") if japanese_name.present?
        self.definition = self.definition.lstrip.capitalize if definition.present?
    end
end
