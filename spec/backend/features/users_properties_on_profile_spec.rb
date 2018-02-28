feature 'profile properties' do
  scenario 'users properties are displayed on their profile page' do
    visit ('/')
    fill_in 'username', with: 'Jim'
    fill_in 'password', with: 'abc123'
    click_button('Submit')
    fill_in 'address', with: '27 Snowy road'
    fill_in 'price', with: '100'
    fill_in 'image', with: 'www.imgur.com'
    click_button('CREATE SPACE')
    click_button('Profile')
    expect(page).to have_content("27 Snowy road")
  end
end
