feature "signing-up" do
  scenario "users need a valid email to sign up" do
    visit('/')
    click_on('Register')
    fill_in 'username', with: "Jim"
    fill_in 'email', with: "notvalid"
    fill_in 'password', with: "abc123"
    click_button('Submit')
    expect(page).to have_content("NO!")
  end
end
