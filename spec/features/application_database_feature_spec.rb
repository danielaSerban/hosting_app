require 'spec_helper'

feature "Application Database Management" do

  scenario "User creates new Application Db" do
     visit "/application_databases/new"

    fill_in "Name", :with => "John Doe"
    fill_in "User", :with => "User 1"
    fill_in "Password", :with => "Password"

    click_button "Create Application database"

     expect(page).to have_text("Application database was successfully created.")
  end

  scenario "User creates Application Db without req fields" do
    visit "/application_databases/new"

    fill_in "User", :with => "User 1"
    fill_in "Password", :with => "Password"

    click_button "Create Application database"

    expect(page).to have_text("Name can't be blank")
  end

  scenario "User visits a app db show page" do
    index_path = polymorphic_path([:application_databases])
    visit index_path
    expect(current_path).to eq index_path
  end

  scenario "User visits index page" do
    visit "/application_databases"
    expect(page).to have_text("Application databases")
  end
end