feature "signing-up" do
  scenario "users need a valid email to sign up" do
    visit('/')
    click_link('signup')
    fill_in 'username', with: "Jim"
    fill_in 'email', with: "notvalid"
    fill_in 'password', with: "abc123"
    click_button('Submit')
    expect(page).not_to have_content("Jim")
  end
end
