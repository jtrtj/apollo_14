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
  end
end
=begin
As a visitor,
When I visit '/astronauts'
I see a list of astronauts with the following info:
 - Name
 - Age
 - Job
 (e.g. "Name: Neil Armstrong" Age: 37 Job: Commander")
=end