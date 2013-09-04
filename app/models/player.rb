class Player < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :nickname, presence: true, uniqueness: true
  validates :password, presence: true
  has_and_belongs_to_many :games

  has_secured_password

end
