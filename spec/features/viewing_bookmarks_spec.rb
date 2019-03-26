require 'dotenv'
Dotenv.load

feature 'Viewing bookmarks' do
  scenario 'visiting index page' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing bookmarks' do
    visit ('/bookmarks')
    
    expect(page).to have_content "http://www.guardian.co.uk"
    expect(page).to have_content "http://www.google.com"
end
end