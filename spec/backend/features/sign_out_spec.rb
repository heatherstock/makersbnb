feature "signing out" do
  scenario "users can sign out" do
    sign_in_jim
    click_button('SIGN OUT')
    expect(page).not_to have_content("Welcome Jim")
  end
end
