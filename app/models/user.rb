class User < ActiveRecord::Base
  has_many :products
  has_many :contributions
  has_many :products, through: :contributions
end
