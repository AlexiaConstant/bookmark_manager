feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
  
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  
  end

end 

# feature 'viewing bookmarks' do 
#   scenario 'can see bookmarks' do 
#     visit ('/bookmarks')
#     expect(page).to have_content "https://airtable.com/shrJMn1quurUpejHI/tblU9M74TCpg89oGC?mode=week"
#     expect(page).to have_content "https://github.com/makersacademy/course/blob/main/apprenticeship_module_outlines.md"
#   end
# end 