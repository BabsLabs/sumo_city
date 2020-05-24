class Sumo < ApplicationRecord
  validates_presence_of(:name, 
                        :heya,
                        :full_name,
                        :ring_name,
                        :rank,
                        :date_of_birth,
                        :year_of_birth,
                        :place_of_birth,
                        :height,
                        :weight,
                        :favorite_techniques,
                        on: [:create, :update])
  belongs_to :stable
end