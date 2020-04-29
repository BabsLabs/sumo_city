require 'rails_helper'

describe Term do
  describe 'validations' do
    it { should validate_presence_of(:english_name) }
    it { should validate_presence_of(:japanese_name) }
    it { should validate_presence_of(:definition) }
  end

  describe "before_action (capitalize and gsub parenthesis)" do
    it 'should update names for a new record' do
      @term = Term.new(english_name: 'kimetaoshi', japanese_name: '(極め倒し)', definition: "immobilizing the opponent's...")
      @term.valid?
      expect(@term.english_name).to  eq('Kimetaoshi') # Name has been capitalized
      expect(@term.japanese_name).to  eq('極め倒し') # Parenthesis have been removed
      expect(@term.definition).to  eq("Immobilizing the opponent's...") # Definition has been capitalized
    end
  end
end