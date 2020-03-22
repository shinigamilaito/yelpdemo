class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :reviews

  def avg_rating
    if reviews.present?
      reviews.average(:rating).round(2, :down)
    else
      0
    end
  end
end
