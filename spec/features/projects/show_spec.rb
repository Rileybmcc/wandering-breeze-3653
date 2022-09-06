require 'rails_helper'

RSpec.describe 'project show page' do

  before :each do
    @furniture_challenge = Challenge.create(theme: "Apartment Furnishings", project_budget: 1000)
    @lit_fit = furniture_challenge.projects.create(name: "Litfit", material: "Lamp")
    @upholstery_tux = @furniture_challenge.projects.create(name: "Upholstery Tuxedo", material: "Couch")
    @lit_fit = Project.create!(name: "Litfit", material: "Lamp")

    @furniture_challenge.save
    @lit_fit.save
    @upholstery_tux.save
  end

  it 'can show project name on showpage' do
    # require "pry"; binding.pry
    visit "/projects/#{@upholstery_tux.id}"

    expect(page).to have_content(@upholstery_tux.name)
  end

  it 'can show project material and name' do
    # require "pry"; binding.pry
    visit "/projects/#{@upholstery_tux.id}"

    expect(page).to have_content(@upholstery_tux.name)
    expect(page).to have_content(@upholstery_tux.material)
  end

  it 'can show project material and name' do

    visit "/projects/#{@upholstery_tux.id}"

    expect(page).to have_content(@upholstery_tux.challenge.theme)

  end





end
