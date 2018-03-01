feature 'profile properties' do
  scenario 'users properties are displayed on their profile page' do
    sign_in_jim
    add_snowy_road
    click_button('USER PROFILE')
    expect(page).to have_content("27 Snowy road")
  end

  scenario 'only users properties are displayed on their profile page' do
    sign_in_bob
    add_snowy_road
    click_button('SIGN OUT')
    sign_in_jim
    click_button('USER PROFILE')
    expect(page).not_to have_content("27 Snowy road")
  end
end
