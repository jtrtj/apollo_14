require 'rails_helper'

describe Astronaut, type: :model do
  context 'class methods' do
    it '#avg_age' do
      astro_1 = Astronaut.create(name: 'sgs', age: 20, job: 'sadg')
      astro_2 = Astronaut.create(name: 'gfd', age: 30, job: 'hgfd')

      expect(Astronaut.avg_age).to eq(25)
    end
  end
end