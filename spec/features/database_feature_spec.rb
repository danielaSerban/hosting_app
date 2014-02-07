require 'spec_helper'

feature "Database Management" do

  scenario "User creates new Database" do
    visit "/databases/new"

    fill_in "Type", :with => "MySQL"
    fill_in "Root Password", :with => "MyPass"

    click_button "Create Database"
    expect(page).to have_text "Database was successfully created."

  end

  scenario "User visits database index page" do
    visit "/databases"

    expect(page).to have_text("Databases")
  end

  scenario "User doesn't fill required fields " do
    visit "/databases/new"

    click_button "Create Database"
    expect(page).to have_text "Db type can't be blank"

  end
  scenario "User visits an application show page" do
    index_path = polymorphic_path([:databases])
    visit index_path
    expect(current_path).to eq index_path
  end
end