class AddUserIdToBootcampReviews < ActiveRecord::Migration
  def change
    add_column :bootcamp_reviews, :user_id, :integer
  end
end
