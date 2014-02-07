require 'spec_helper'

feature "Provider Management" do

  scenario "User creates new provider" do
    fill_in "Name", :with => "My provider"
    fill_in "Full contact name", :with => "John Doe Jr."
    fill_in "E-mail", :with => "john.doe@yahoo.com"
    fill_in "Your desired username", :exact => true, :with => "Username"
    fill_in "Password", :with => "Pass1"

    click_button "Create Provider"
    expect(page).to have_text("Provider was created successfully.")

  end

  scenario "User creates new provider without name" do

    fill_in "Full contact name", :with => "John Doe Jr."
    fill_in "E-mail", :with => "john.doe@yahoo.com"
    fill_in "Your desired username", :exact => true, :with => "Username"
    fill_in "Password", :with => "Pass1"

    click_button "Create Provider"
    expect(page).to have_text("Name can't be blank")

  end

  scenario "User visits a provider show page" do
    index_path = polymorphic_path([:providers])
    visit index_path
    expect(current_path).to eq index_path
  end

  scenario "User visits index page" do
    visit "/providers"
    expect(page).to have_text("Providers")
  end

end