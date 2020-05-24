class Stable < ApplicationRecord
  validates_presence_of(:title, :ichimon, :founded, :address, :address_jp, :lon, :lat, on: [:create])
  has_many :sumos
end
