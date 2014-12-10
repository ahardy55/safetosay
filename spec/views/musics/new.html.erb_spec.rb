require 'rails_helper'

RSpec.describe "musics/new", :type => :view do
  before(:each) do
    assign(:music, Music.new(
      :link => "MyString",
      :title => "MyString",
      :release_date => "MyString"
    ))
  end

  it "renders new music form" do
    render

    assert_select "form[action=?][method=?]", musics_path, "post" do

      assert_select "input#music_link[name=?]", "music[link]"

      assert_select "input#music_title[name=?]", "music[title]"

      assert_select "input#music_release_date[name=?]", "music[release_date]"
    end
  end
end
