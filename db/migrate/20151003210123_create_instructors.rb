class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :linkedin
      t.string :photo

      t.timestamps null: false
    end
  end
end
