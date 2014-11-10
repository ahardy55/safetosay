require 'rails_helper'

RSpec.describe "news_updates/edit", :type => :view do
  before(:each) do
    @news_update = assign(:news_update, NewsUpdate.create!())
  end

  it "renders the edit news_update form" do
    render

    assert_select "form[action=?][method=?]", news_update_path(@news_update), "post" do
    end
  end
end
