require 'rails_helper'

RSpec.describe "abouts/index", :type => :view do
  before(:each) do
    assign(:abouts, [
      About.create!(
        :content => "Content"
      ),
      About.create!(
        :content => "Content"
      )
    ])
  end

  it "renders a list of abouts" do
    render
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
