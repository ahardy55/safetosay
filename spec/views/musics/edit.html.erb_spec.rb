require 'rails_helper'

RSpec.describe "musics/edit", :type => :view do
  before(:each) do
    @music = assign(:music, Music.create!(
      :link => "MyString",
      :title => "MyString",
      :release_date => "MyString"
    ))
  end

  it "renders the edit music form" do
    render

    assert_select "form[action=?][method=?]", music_path(@music), "post" do

      assert_select "input#music_link[name=?]", "music[link]"

      assert_select "input#music_title[name=?]", "music[title]"

      assert_select "input#music_release_date[name=?]", "music[release_date]"
    end
  end
end
