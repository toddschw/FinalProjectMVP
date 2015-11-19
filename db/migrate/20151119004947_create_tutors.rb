class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :city
      t.text :bio
      t.string :picurl
      t.integer :rate
      t.string :email

      t.timestamps null: false
    end
  end
end
