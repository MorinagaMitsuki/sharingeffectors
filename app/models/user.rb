class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :effectors, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_effectors, through: :likes, source: :effector

  validates :name, presence: true 
  validates :profile, length: { maximum: 200 } 

  def already_liked?(effector)
    self.likes.exists?(effector_id: effector.id)
  end
end
