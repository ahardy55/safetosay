require 'rails_helper'

RSpec.describe "news_updates/show", :type => :view do
  before(:each) do
    @news_update = assign(:news_update, NewsUpdate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
