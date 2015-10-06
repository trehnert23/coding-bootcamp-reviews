class AddHiredToBootcampReviews < ActiveRecord::Migration
  def change
    add_column :bootcamp_reviews, :hired, :string
  end
end
