feature "signing-up" do
  scenario "users can sign-up for an account" do
    visit('/')
    click_on('Register')
    fill_in 'username', with: "Frank"
    fill_in 'email', with: "frank@frank.com"
    fill_in 'password', with: "abc123"
    click_button('Submit')
    expect(page).to have_content("Frank")
  end
end
