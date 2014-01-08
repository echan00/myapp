class Product < ActiveRecord::Base
  attr_accessible :url, :name, :image, :title, :createdby
  validates_presence_of :url, :name, :createdby
  has_many :associations
  has_many :users, :through => :associations

#  scope :order, -> {where ('products.created_at DESC')}

end
