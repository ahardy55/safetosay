require 'rails_helper'

RSpec.describe "NewsUpdates", :type => :request do
  describe "GET /news_updates" do
    it "works! (now write some real specs)" do
      get news_updates_path
      expect(response.status).to be(200)
    end
  end
end
