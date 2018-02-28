feature 'view a range of dates that are available' do
  scenario 'space owner can specify property availability from the profile page' do
    visit ('/')
    expect(page).to have_content('7/10/18')
  end
end
