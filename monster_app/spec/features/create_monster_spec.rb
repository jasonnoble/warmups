require 'rails_helper'

feature 'creating monsters' do
  scenario 'can create a monster' do
    visit '/'

    click_link 'Add Monster'

    fill_in 'Color', with: 'Purple'
    fill_in 'Eyes', with: 1
    fill_in 'Diet', with: 'People'

    click_button 'Scare Me!'

    expect(page).to have_content(
      "1 eyed purple people eater created"
    )
  end
end
