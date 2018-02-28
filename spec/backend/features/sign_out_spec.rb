feature "signing out" do
  scenario "users can sign out" do
    visit('/')
    fill_in 'username', with: 'Jim'
    fill_in 'password', with: 'abc123'
    click_button('SIGN IN')
    click_button('SIGN OUT')
    expect(page).not_to have_content("Welcome Jim")
  end
end
