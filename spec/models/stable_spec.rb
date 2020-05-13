require 'rails_helper'

describe Stable do
  describe 'validations' do
    it { should validate_presence_of(:title).on(:create) }
    it { should validate_presence_of(:ichimon).on(:create) }
    it { should validate_presence_of(:founded).on(:create) }
    it { should validate_presence_of(:address).on(:create) }
    it { should validate_presence_of(:address_jp).on(:create) }
    it { should validate_presence_of(:lon).on(:create) }
    it { should validate_presence_of(:lat).on(:create) }
  end
end