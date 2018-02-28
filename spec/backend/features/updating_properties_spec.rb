feature 'profile properties' do
  scenario 'users can update their properties' do
    visit '/'
    fill_in 'username', with: 'Jim'
    fill_in 'password', with: 'abc123'
    click_button('SIGN IN')
    fill_in 'address', with: '27 Snowy road'
    fill_in 'price', with: '100'
    fill_in 'image', with: 'www.imgur.com'
    click_button('CREATE SPACE')

    click_button('USER PROFILE')
    within('#2') do
      fill_in 'address', with: '72 Sunny Grove'
      fill_in 'price', with: '7'
      click_button('Update')
    end
    expect(page).to have_content('72 Sunny Grove'
  end
end
