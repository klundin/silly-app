require 'spec_helper'

feature 'Home page Layout' do
  scenario 'check Title/content for Catalog, Home, ClickFuel values' do
   visit '/static_pages/home'
   
   expect(page).to have_content('Catalog')
   expect(page).to have_title('Home')
   expect(page).to have_content('ClickFuel')

  end
end
feature 'Help Page Layout' do
  scenario 'Help Page shows ClickFuel' do
    visit '/static_pages/help'

    expect(page).to have_content('ClickFuel')
    expect(page).to have_title('Help')
    expect(page).to have_content('Catalog')
  
  end
end