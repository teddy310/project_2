class Product < ActiveRecord::Base
  belongs_to :user
  has_many :contributions
  has_many :users, through: :contributions

end
