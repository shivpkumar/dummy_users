class User < ActiveRecord::Base
  validates :email, :first_name, :last_name, :password, presence: true
  validates :email, uniqueness: true

  def self.authenticate(args)
    user = User.find_by_email(args[:email])
    user if user && user.password == args[:password]
  end

end
