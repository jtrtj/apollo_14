class Astronaut < ApplicationRecord

  def self.avg_age
    average(:age)
  end
end
