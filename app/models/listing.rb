class Listing < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :orders

  validates :name, :description, :price, presence:true
  validates :price, numericality: {greater_than: 0}

  validate :correct_image_type

  private

  def correct_image_type
    if image.attached? && !image.content_type.in?(%w(image/png image/jpeg image/jpg))
      errors.add(:image, "must be a jpeg or png file!")
    elsif image.attached? == false
      errors.add(:image, "must be attached!")
    end
  end
end
