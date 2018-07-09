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
      save_and_open_page

      expect(page).to have_content('Average Age: 25')
    end

    it 'should see a list of the space missions for each astronaut in aplha order' do
      
    end
  end
end
=begin
As a visitor,
When I visit '/astronauts'
I see a list of the space missions' in alphabetical order for each astronaut.
(e.g "Apollo 13"
     "Capricorn 4"
     "Gemini 7")
=end