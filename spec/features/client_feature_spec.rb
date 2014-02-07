require 'spec_helper'

feature 'Client Management' do

  scenario 'User creates new client' do
    visit '/clients/new'
    fill_in 'Name', :with => 'Client'

    click_button 'Create Client'
    expect(page).to have_text('Client was successfully created.')
  end

  scenario "User doesn't fill client Name" do
    visit '/clients/new'

    click_button 'Create Client'
    expect(page).to have_text("Name can't be blank" )
  end

  scenario "User visits a client show page" do
    index_path = polymorphic_path([:clients])
    visit index_path
    expect(current_path).to eq index_path
  end

  scenario "User visits index page" do
    visit "/clients"
    expect(page).to have_text("Clients")
  end

end