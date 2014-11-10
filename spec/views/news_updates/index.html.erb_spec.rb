require 'rails_helper'

RSpec.describe "news_updates/index", :type => :view do
  before(:each) do
    assign(:news_updates, [
      NewsUpdate.create!(),
      NewsUpdate.create!()
    ])
  end

  it "renders a list of news_updates" do
    render
  end
end
