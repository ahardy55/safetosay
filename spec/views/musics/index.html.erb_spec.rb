require 'rails_helper'

RSpec.describe "musics/index", :type => :view do
  before(:each) do
    assign(:musics, [
      Music.create!(
        :link => "Link",
        :title => "Title",
        :release_date => "Release Date"
      ),
      Music.create!(
        :link => "Link",
        :title => "Title",
        :release_date => "Release Date"
      )
    ])
  end

  it "renders a list of musics" do
    render
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Release Date".to_s, :count => 2
  end
end
