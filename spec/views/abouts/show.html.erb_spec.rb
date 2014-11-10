require 'rails_helper'

RSpec.describe "abouts/show", :type => :view do
  before(:each) do
    @about = assign(:about, About.create!(
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
  end
end
