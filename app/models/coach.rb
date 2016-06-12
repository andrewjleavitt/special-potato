class Coach < ActiveRecord::Base

  has_secure_password

  has_many :reviews

  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end