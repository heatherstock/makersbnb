feature 'spaces displayed with associated username' do
  scenario 'display of properties shows relevant username' do
    sign_up_jim
    add_snowy_road
    expect(page).to have_content("27 Snowy road")
  end
end
