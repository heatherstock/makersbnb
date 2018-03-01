feature "signing-in" do
  scenario "users can login to their account" do
    sign_up_jim
    expect(page).to have_content('Welcome Jim')
  end
end
