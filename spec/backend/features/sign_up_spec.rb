feature "signing-up" do
  scenario "users can sign-up for an account" do
    visit('/')
    click_link('signup')
    fill_in 'username', with: "Jim"
    fill_in 'email', with: "123@abc.com"
    fill_in 'password', with: "abc123"
    click_button('Submit')
    expect(page).to have_content("Jim")
  end
end
