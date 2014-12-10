require 'rails_helper'

RSpec.describe "musics/show", :type => :view do
  before(:each) do
    @music = assign(:music, Music.create!(
      :link => "Link",
      :title => "Title",
      :release_date => "Release Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Release Date/)
  end
end
