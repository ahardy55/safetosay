require 'rails_helper'

RSpec.describe "shows/show", :type => :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :venue => "Venue",
      :support => "Support",
      :address => "Address",
      :price => "Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/Support/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Price/)
  end
end
