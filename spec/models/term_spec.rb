require 'rails_helper'

describe Term do
  describe 'validations' do
    it { should validate_presence_of(:english_name).on(:create) }
    it { should validate_presence_of(:english_name).on(:update) }
    it { should validate_presence_of(:japanese_name).on(:create) }
    it { should validate_presence_of(:japanese_name).on(:update) }
    it { should validate_presence_of(:definition).on(:update) }
    it { should_not validate_presence_of(:definition).on(:create) }
  end

  describe "before_action (capitalize and gsub parenthesis)" do
    it 'should update names for a new record' do
      @term = Term.create(english_name: 'kimetaoshi', japanese_name: '(極め倒し)', definition: "immobilizing the opponent's...")
      expect(@term.english_name).to  eq('Kimetaoshi') # Name has been capitalized
      expect(@term.japanese_name).to  eq('極め倒し') # Parenthesis have been removed
      expect(@term.definition).to  eq("Immobilizing the opponent's...") # Definition has been capitalized
    end
  end
end