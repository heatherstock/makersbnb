feature 'profile properties' do
  scenario 'users can update their properties' do
    visit ('/')
    fill_in 'username', with: 'Jim'
    fill_in 'password', with: 'abc123'
    click_button('SIGN IN')
    fill_in 'address', with: '27 Snowy road'
    fill_in 'price', with: '100'
    fill_in 'image', with: 'www.imgur.com'
    click_button('CREATE SPACE')

    click_button('USER PROFILE')

    # there needs to be something here!
    # an "edit" button maybe?

    fill_in '1', with: '1 Makers Court'
    fill_in 'price', with: '1'
    click_button('Update')
    expect(page).to have_content('1 Makers Court')
  end
end
