class HomeController < ApplicationController
  def index
    @news_updates = NewsUpdate.last(3)
  end
end
