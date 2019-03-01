class User < ApplicationRecord

  validates :user_first_name, presence: true, length: { minimum: 1, maximum: 15 }
  validates :user_last_name, presence: true, length: { minimum: 1, maximum: 30 }
  validates :user_email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :user_admin?, inclusion: { in: [true, false] }

  before_save { self.user_email = user_email.downcase }

  has_secure_password

end
