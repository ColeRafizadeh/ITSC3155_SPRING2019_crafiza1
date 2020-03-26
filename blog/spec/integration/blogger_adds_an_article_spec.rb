require 'rails_helper.rb'

feature "blog adds an article" do
    scenario "Blogger scuccenfully navigates to the new articles page from the listing articles page" do
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "New Article"
        expect(page).to have_content("New Article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
    scenario "Blogger successfully creates a new article" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "Capybabra Article"
        fill_in "Text", with: "This is a new Capybara Article"
        click_button "Create Article"
        expect(page).to have_content("Capybabra Article")
        expect(page).to have_content("This is a new Capybara Article")
    end
end