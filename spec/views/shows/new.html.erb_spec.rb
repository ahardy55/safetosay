require 'rails_helper'

RSpec.describe "shows/new", :type => :view do
  before(:each) do
    assign(:show, Show.new(
      :venue => "MyString",
      :support => "MyString",
      :address => "MyString",
      :price => "MyString"
    ))
  end

  it "renders new show form" do
    render

    assert_select "form[action=?][method=?]", shows_path, "post" do

      assert_select "input#show_venue[name=?]", "show[venue]"

      assert_select "input#show_support[name=?]", "show[support]"

      assert_select "input#show_address[name=?]", "show[address]"

      assert_select "input#show_price[name=?]", "show[price]"
    end
  end
end
