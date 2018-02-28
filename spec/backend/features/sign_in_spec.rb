feature "signing-in" do
  scenario "users can login to their account" do
    visit('/')
    fill_in 'username', with: 'Jim'
    fill_in 'password', with: 'abc123'
    click_button('SIGN IN')
    expect(page).to have_content('Welcome Jim')
  end
end
