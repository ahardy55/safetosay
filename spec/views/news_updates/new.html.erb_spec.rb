require 'rails_helper'

RSpec.describe "news_updates/new", :type => :view do
  before(:each) do
    assign(:news_update, NewsUpdate.new())
  end

  it "renders new news_update form" do
    render

    assert_select "form[action=?][method=?]", news_updates_path, "post" do
    end
  end
end
