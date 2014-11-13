class NewsUpdate < ActiveRecord::Base
  validates_presence_of :title, :content 

  def title
    read_attribute(:title).try(:titleize)
  end

  def date 
    read_attribute(:created_at).strftime("%B %d, %Y")
  end
end
