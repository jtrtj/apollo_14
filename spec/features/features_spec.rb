require 'rails_helper'
describe 'user' do
  context 'visiting /astronauts' do
    it 'sees a list of astronauts and their attributes' do
      astro_1 = Astronaut.create(name: 'sgs', age: 23, job: 'sadg')
      astro_2 = Astronaut.create(name: 'gfd', age: 23, job: 'hgfd')

      visit astronauts_path

      expect(page).to have_content(astro_1.name)
      expect(page).to have_content(astro_1.age)
      expect(page).to have_content(astro_1.job)
      expect(page).to have_content(astro_2.name)
      expect(page).to have_content(astro_2.age)
      expect(page).to have_content(astro_2.job)
    end
    it 'sees average age of astronauts' do
      astro_1 = Astronaut.create(name: 'sgs', age: 20, job: 'sadg')
      astro_2 = Astronaut.create(name: 'gfd', age: 30, job: 'hgfd')

      visit astronauts_path

      expect(page).to have_content('Average Age: 25')
    end

    it 'should see a list of the space missions for each astronaut in aplha order' do
      astro_1 = Astronaut.create(name: 'sgs', age: 20, job: 'sadg')
      m1 = astro_1.space_missions.create(title: 'wohoo', trip_length: 56)
      m2 = astro_1.space_missions.create(title: 'wohoo too', trip_length: 45678)

      visit astronauts_path

      expect(page).to have_content(m1.title)
      expect(page).to have_content(m2.title)
    end

    it 'should see total time in space for each astronaut' do
      astro_1 = Astronaut.create(name: 'sgs', age: 20, job: 'sadg')
      m1 = astro_1.space_missions.create(title: 'wohoo', trip_length: 5)
      m2 = astro_1.space_missions.create(title: 'wohoo too', trip_length: 4)

      visit astronauts_path

      expect(page).to have_content('Time in Space: 9')
    end
  end
end
