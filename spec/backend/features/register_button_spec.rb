feature "main page has a link to signup page" do
  scenario "page has reister link" do
    visit('/')
    expect(page).to have_link("Register")
  end
end
