feature 'display properties' do
  scenario 'homepage displays properties' do
    visit ('/')
    expect(page).to have_content("Makers Court")
  end
end
