class AddRestaurantIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :restaurant, foreign_key: true, index: true
  end
end
