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
feature 'Contact Page' do
  scenario 'Contact page shows clickfuel' do
    visit '/static_pages/contact'
    expect(page).to have_content('ClickFuel')
    expect(page).to have_content('suppor@clickfuel.com')
  end

  scenario 'Contact page shows mailto link' do
    visit 'static_pages/contact'
    expect(page).to have_content('support@clickfuel.com')
  end

  scenario 'Contact page shows nav bar' do
    visit 'static_pages/contact'
    expect(page).to have_content('Home')
  end
end
