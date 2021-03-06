class Restaurant < ApplicationRecord
  searchkick

  mount_uploader :image, ImageUploader

  has_many :reviews

  validates :name, :address, :phone, :website, presence: true
  validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/, message: "must be in the format (123) 456-7890" }
  validates :website, format: { with: /\Ahttps?:\/\/.*\z/, message: "must start with http:// or https://"}
  validates :address, format: { with: /\A\d+[^,]+,[^,]+, [A-Z]{2} \d{5}\z/, message: "must be in the format 350 Fifth Avenue, New York, NY 10118" }

  def avg_rating
    if reviews.present?
      reviews.average(:rating).round(2, :down)
    else
      0
    end
  end
end
