feature 'profile properties' do
  scenario 'users can update their properties' do
    sign_up_jim
    add_snowy_road
    click_button('USER PROFILE')
    within('#2') do
      fill_in 'address', with: '72 Sunny Grove'
      fill_in 'price', with: '7'
      click_button('Update')
    end
    expect(page).to have_content('72 Sunny Grove')
  end
end
