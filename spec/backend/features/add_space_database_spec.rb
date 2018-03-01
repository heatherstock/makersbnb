feature 'spaces can be added and are displayed' do
  scenario 'user can login add property and it appears on page' do
    sign_in_jim
    add_snowy_road
    expect(page).to have_content("27 Snowy road")
  end
end
