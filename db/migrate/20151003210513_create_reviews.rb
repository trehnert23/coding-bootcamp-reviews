class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :user_id
      t.integer :instructor_id
      t.integer :bootcamp_id
      t.integer :hotness
      t.integer :approachable
      t.integer :knowledge
      t.integer :organization
      t.integer :campus
      t.integer :price
      t.integer :placement
      t.integer :location
      t.integer :instructors

      t.timestamps null: false
    end
  end
end
