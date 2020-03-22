class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy

  validates :first_name, :last_name, presence: true

  def public_name
    "#{first_name.capitalize} #{last_name.capitalize[0]}"
  end
end
