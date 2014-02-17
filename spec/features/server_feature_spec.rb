require 'spec_helper'

feature "Server Management" do
  scenario "User creates a new server" do
    visit "/servers/new"

    fill_in "Host Name", :with => "MyHost"
    fill_in "Internal IP", :with => "192.0.0.1"
    fill_in "External IP", :with => "188.27.186.8"
    fill_in "User", :with => "UserTest"
    fill_in "Password", :with => "Pass"
    fill_in "Root Password", :with => "Pass"
    fill_in "Public SSH Key", :with => "MyKey"

    click_button "Create Server"

    expect(page).to have_text("Server was successfully created.")
  end

  scenario "User doesn't fill hostname" do
    visit "/servers/new"

    fill_in "Internal IP", :with => "192.0.0.1"
    fill_in "External IP", :with => "188.27.186.8"
    fill_in "User", :with => "UserTest"
    fill_in "Password", :with => "Pass"
    fill_in "Root Password", :with => "Pass"
    fill_in "Public SSH Key", :with => "MyKey"

    click_button "Create Server"

    expect(page).to have_text("Hostname can't be blank")
  end

  scenario "User doesn't fill Internal IP" do
    visit "/servers/new"

    fill_in "Host Name", :with => "MyHost"
    fill_in "External IP", :with => "188.27.186.8"
    fill_in "User", :with => "UserTest"
    fill_in "Password", :with => "Pass"
    fill_in "Root Password", :with => "Pass"
    fill_in "Public SSH Key", :with => "MyKey"

    click_button "Create Server"

    expect(page).to have_text("Internalip can't be blank")
  end

  scenario "User visits a server show page" do
    index_path = polymorphic_path([:servers])
    visit index_path
    expect(current_path).to eq index_path
  end

  scenario "User visits index page" do
    visit "/servers"
    expect(page).to have_text("Servers")
  end


end