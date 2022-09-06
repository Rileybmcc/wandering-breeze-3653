require 'rails_helper'

RSpec.describe 'project show page' do

  before :each do
    @lit_fit = furniture_challenge.projects.create(name: "Litfit", material: "Lamp")
    @upholstery_tux = furniture_challenge.projects.create(name: "Upholstery Tuxedo", material: "Couch")

  end

  it 'can show project name on showpage' do
    visit "projects/#{@upholstery_tux.id}"
    
    expect(page).to have_content(@upholstery_tux.name)
  end





end
