feature 'display properties' do
  scenario 'homepage displays properties' do
    visit ('/')
    expect(page).to have_content("Makers Court")
    expect(page).to have_content("5.75")
  end
end
