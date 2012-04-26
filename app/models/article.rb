class Article < ActiveRecord::Base
  
  # relationships 
  has_one :category
  
  validates_presence_of :title, :content
  
  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)
end
