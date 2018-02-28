feature 'view a range of dates that are available' do
  scenario 'space owner can specify property availability from the profile page' do
    visit ('/')
    expect(page).to have_content('7/10/18')
    # fill_in 'username', with: 'Jim'
    # fill_in 'password', with: 'abc123'
    # click_button('Submit')
    # click_button('USER PROFILE')

  end
end
