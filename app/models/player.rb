class Player < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :nickname, presence: true, uniqueness: true
  validates :password, presence: true
  has_and_belongs_to_many :games

  def self.authentication(email,password)
    self.find_by_email_and_password(email,password)
  end

end
