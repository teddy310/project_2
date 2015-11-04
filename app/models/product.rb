class Product < ActiveRecord::Base
  belongs_to :user
  has_many :contributions
  has_many :users, through: :contributions

  def date_published
     created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
  end
end
