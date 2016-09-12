require 'rails_helper'

RSpec.feature 'user visits landing page', type: :feature do
  scenario 'successfully' do
    visit recruitment_path

    expect(page).to have_content "Telephone"
  end
end
