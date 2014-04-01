# spec/features/visitor_signs_up_spec.rb
require 'spec_helper'

feature 'Visitor signs up' do
  scenario 'with valid name and email' do
   sign_up_with 'Example User1','exampleuser2@test.com'

   expect(page).to have_content('User was successfully created')
  end

  scenario 'with blank name' do
    sign_up_with '', 'testuser3@test.com'

    expect(page).to have_content('blank')
  end

  scenario 'with blank email' do
    sign_up_with 'TestName', ''

    expect(page).to have_content('blank')
  end
  scenario 'with not unique email' do
    sign_up_with 'TestName', 'exampleuser1@test.com'

    expect(page).to have_content('taken')
  end
  
 def sign_up_with(name, email)
  visit '/users/new'
  fill_in 'Name', with: name
  fill_in 'Email', with: email
  click_button 'Create User'
 end
end
