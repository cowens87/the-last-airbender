require 'rails_helper'

RSpec.describe 'As an user', type: :feature do
  describe "When I Select 'Fire Nation' from the select field" do
    it 'I should see the total number of people who live there & a list for first 25 members with their info' do
      visit root_path

      select 'Fire Nation', from: :nation
      click_on 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('Total No. Residents: 87')
      expect(page).to have_css('.residents', count: 87)
      expect(page).to have_css('.par_residents', count: 25)
      within(first('.par_residents')) do
        expect(page).to have_css('.name')
        expect(page).to have_css('.image')
        expect(page).to have_css('.allies')
        expect(page).to have_css('.enemies')
        expect(page).to have_css('.affiliations')
      end
      expect(page).to have_content('')
    end
  end
end