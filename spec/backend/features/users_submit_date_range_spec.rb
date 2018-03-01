feature 'view a range of dates that are available' do
  scenario 'space owner can specify property availability from the profile page' do
    sign_in_jim
    fill_in 'address', with: '31 Snowy road'
    fill_in 'price', with: '123'
    fill_in 'image', with: 'imgur/imgur'
    fill_in 'from', with: '7/7/7'
    fill_in 'until', with: '11/7/7'
    click_button('CREATE SPACE')
    expect(page).to have_content('11/7/7')
  end
end
