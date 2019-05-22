class AddReferencesToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :references, :string
  end
end
