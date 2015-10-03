class CreateBootcamps < ActiveRecord::Migration
  def change
    create_table :bootcamps do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :url
      t.string :photo
      t.text :information
      t.string :address

      t.timestamps null: false
    end
  end
end
