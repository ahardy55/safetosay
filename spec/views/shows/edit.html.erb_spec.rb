require 'rails_helper'

RSpec.describe "shows/edit", :type => :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :venue => "MyString",
      :support => "MyString",
      :address => "MyString",
      :price => "MyString"
    ))
  end

  it "renders the edit show form" do
    render

    assert_select "form[action=?][method=?]", show_path(@show), "post" do

      assert_select "input#show_venue[name=?]", "show[venue]"

      assert_select "input#show_support[name=?]", "show[support]"

      assert_select "input#show_address[name=?]", "show[address]"

      assert_select "input#show_price[name=?]", "show[price]"
    end
  end
end
