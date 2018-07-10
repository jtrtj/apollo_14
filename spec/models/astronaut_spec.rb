require 'rails_helper'

describe Astronaut, type: :model do
  context 'class methods' do
    it '#avg_age' do
      astro_1 = Astronaut.create(name: 'sgs', age: 20, job: 'sadg')
      astro_2 = Astronaut.create(name: 'gfd', age: 30, job: 'hgfd')

      expect(Astronaut.avg_age).to eq(25)
    end
  end
  context 'instance methods' do
    it '#alphabetized_space_missions' do
      astro_1 = Astronaut.create(name: 'sgs', age: 20, job: 'sadg')
      m1 = astro_1.space_missions.create(title: 'wohoo', trip_length: 56)
      m2 = astro_1.space_missions.create(title: 'boohoo too', trip_length: 45678)
      
      expect(astro_1.alphabetized_space_missions).to eq([m2,m1])
    end

    it '#time_in_space' do
      astro_1 = Astronaut.create(name: 'sgs', age: 20, job: 'sadg')
      m1 = astro_1.space_missions.create(title: 'wohoo', trip_length: 56)
      m2 = astro_1.space_missions.create(title: 'boohoo too', trip_length: 45678)
      
      expect(astro_1.time_in_space).to eq(45734)
    end
  end
end