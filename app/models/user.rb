class User < ApplicationRecord
  has_many :listings
  has_many :sales, class_name:"Order", foreign_key: "seller_id"
  has_many :sales, class_name:"Order", foreign_key: "buyer_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
end
