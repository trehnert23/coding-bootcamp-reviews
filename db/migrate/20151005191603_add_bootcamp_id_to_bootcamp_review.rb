class AddBootcampIdToBootcampReview < ActiveRecord::Migration
  def change
    add_column :bootcamp_reviews, :bootcamp_id, :integer
  end
end
