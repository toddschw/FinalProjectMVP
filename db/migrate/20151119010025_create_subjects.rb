class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :expertise

      t.timestamps null: false
    end
  end
end
