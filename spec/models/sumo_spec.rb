require 'rails_helper'

describe Sumo do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:heya) }
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:ring_name) }
    it { should validate_presence_of(:rank) }
    it { should validate_presence_of(:date_of_birth) }
    it { should validate_presence_of(:year_of_birth) }
    it { should validate_presence_of(:place_of_birth) }
    it { should validate_presence_of(:height) }
    it { should validate_presence_of(:weight) }
    it { should validate_presence_of(:favorite_techniques) }
  end

  describe 'relationships' do
    it { should belong_to(:stable) }
  end
end