class Association < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  attr_accessible :product_id
  validates_presence_of :user_id, presence: true
  validates_presence_of :product_id, presence: true
end
