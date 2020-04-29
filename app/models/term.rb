class Term < ApplicationRecord
  before_validation :format_name

  validates_presence_of :english_name, :japanese_name, :definition
  
  private 

    def format_name
      if english_name.present? || japanese_name.present? || definition.present?
        self.english_name = self.english_name.capitalize
        self.japanese_name = self.japanese_name.gsub(/[()]/, "")
        self.definition = self.definition.capitalize
      end
    end
end
