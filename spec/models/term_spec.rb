require 'rails_helper'

describe Term do
  describe 'validations' do
    it { should validate_presence_of(:english_name).on(:create) }
    it { should validate_presence_of(:english_name).on(:update) }
    it { should validate_presence_of(:japanese_name).on(:create) }
    it { should validate_presence_of(:japanese_name).on(:update) }
    it { should validate_presence_of(:definition).on(:create) }
    it { should validate_presence_of(:definition).on(:update) }
  end
end