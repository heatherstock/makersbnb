feature "signing-up" do
  scenario "users need a valid email to sign up" do
    visit('/')
    click_button('SIGN UP')
    fill_in 'username', with: "Jim"
    fill_in 'email', with: "notvalid"
    fill_in 'password', with: "abc123"
    click_button('Submit')
    expect(page).to have_content("NO!")
  end
end
