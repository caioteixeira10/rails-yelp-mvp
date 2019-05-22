class AddRestaurantIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :restaurant_id, :string
  end
end
