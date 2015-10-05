class CreateInstructorReviews < ActiveRecord::Migration
  def change
    create_table :instructor_reviews do |t|
      t.integer :hotness
      t.integer :approachable
      t.integer :knowledge
      t.integer :preparedness
      t.text :content
      t.integer :user_id
      t.integer :instructor_id
      t.string :course

      t.timestamps null: false
    end
  end
end
