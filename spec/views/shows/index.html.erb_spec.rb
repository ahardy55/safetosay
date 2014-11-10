require 'rails_helper'

RSpec.describe "shows/index", :type => :view do
  before(:each) do
    assign(:shows, [
      Show.create!(
        :venue => "Venue",
        :support => "Support",
        :address => "Address",
        :price => "Price"
      ),
      Show.create!(
        :venue => "Venue",
        :support => "Support",
        :address => "Address",
        :price => "Price"
      )
    ])
  end

  it "renders a list of shows" do
    render
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "Support".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
  end
end
