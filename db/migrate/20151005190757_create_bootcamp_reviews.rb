class CreateBootcampReviews < ActiveRecord::Migration
  def change
    create_table :bootcamp_reviews do |t|
      t.text :content
      t.integer :campus
      t.string :worthit
      t.integer :location
      t.integer :jobhelp

      t.timestamps null: false
    end
  end
end
