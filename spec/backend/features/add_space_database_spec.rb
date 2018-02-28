feature 'spaces can be added and are displayed' do
  scenario 'user can login add property and it appears on page' do
    visit ('/')
    fill_in 'username', with: 'Jim'
    fill_in 'password', with: 'abc123'
    click_button('SIGN IN')
    fill_in 'address', with: '27 Snowy road'
    fill_in 'price', with: '100'
    fill_in 'image', with: 'www.imgur.com'
    click_button('CREATE SPACE')
    expect(page).to have_content("27 Snowy road")
  end
end
