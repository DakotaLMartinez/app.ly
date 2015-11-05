class User < ActiveRecord::Base
  has_many :jobs, dependent: :destroy
  before_save { email.downcase! }
  before_save { fname.capitalize! }
  before_save { lname.capitalize! }
  validates :fname,  presence: true, length: { maximum: 25 }
  validates :lname,  presence: true, length: { maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
