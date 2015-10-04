class AddBootcampIdToInstructor < ActiveRecord::Migration
  def change
    add_column :instructors, :bootcamp_id, :integer
  end
end
