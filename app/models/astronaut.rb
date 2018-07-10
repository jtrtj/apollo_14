class Astronaut < ApplicationRecord
  has_many :astronaut_space_missions
  has_many :space_missions, through: :astronaut_space_missions

  def time_in_space
    space_missions.sum(:trip_length)
  end

  def alphabetized_space_missions
    space_missions.order(:title)
  end

  def self.avg_age
    average(:age)
  end
end
