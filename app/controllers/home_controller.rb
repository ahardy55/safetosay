class HomeController < ApplicationController
  def index
    @news_updates = NewsUpdate.last(5)
  end
end
