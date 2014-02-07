require 'spec_helper'

feature "Application Management" do

  scenario "User creates a new Application" do
    visit "/applications/new"

    fill_in "URL",  :with => "www.google.com"
    fill_in "Github Url", :with => "github.com"
    fill_in "HTTP Basic User", :with => "New User"
    fill_in "HTTP Basic Password", :with => "Password"
    fill_in "Administrator User", :with => "Admin User"
    fill_in "Administrator Password", :with => "AdminPass"
    fill_in "Server Path", :with => "myserverpath\home"
    check "Flag"

    click_button "Create Application"

    expect(page).to have_text("Application was successfully created.")
  end


  scenario "User creates a new Application without required fields" do
    visit "/applications/new"

    fill_in "Github Url", :with => "github.com"
    fill_in "HTTP Basic User", :with => "New User"
    fill_in "HTTP Basic Password", :with => "Password"
    fill_in "Administrator User", :with => "Admin User"
    fill_in "Administrator Password", :with => "AdminPass"
    fill_in "Server Path", :with => "myserverpath\home"
    check "Flag"

    click_button "Create Application"

    expect(page).to have_text("Url can't be blank")
  end

  scenario "User visits application index page" do
    visit "/applications"

    expect(page).to have_text("Applications")
  end

  scenario "User visits an application show page" do
    index_path = polymorphic_path([:applications])
    visit index_path
    expect(current_path).to eq index_path
  end
end