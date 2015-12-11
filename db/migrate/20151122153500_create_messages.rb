class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :from
      t.string :email
      t.text :body
      t.references :tutor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
