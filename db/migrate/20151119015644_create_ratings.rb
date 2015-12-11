class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :review
      t.integer :pencils
      t.string :name_of_reviewer
      t.references :tutor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
