class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.references :tutor, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
