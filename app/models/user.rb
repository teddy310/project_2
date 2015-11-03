class User < ActiveRecord::Base
  has_many :products
  has_many :contributions
  has_many :products, through: :contributions

  def password=(unencrypted_password)
    #we will generate the gibberish here
    self.password_digest = BCrypt::Password.create(unencrypted_password)
  end


  def authenticate(unencrypted_password)
   if BCrypt::Password.new(self.password_digest) == unencrypted_password
     return self
   else
     false
   end
 end

end
