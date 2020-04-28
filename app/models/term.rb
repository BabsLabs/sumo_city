class Term < ApplicationRecord

  before_validation :format_name

  def format_name
    self.english_name = self.english_name.capitalize
    self.japanese_name = self.japanese_name.gsub(/[()]/, "")
  end

end
