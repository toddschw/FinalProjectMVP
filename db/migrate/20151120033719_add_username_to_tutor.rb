class AddUsernameToTutor < ActiveRecord::Migration
  def change
    add_column :tutors, :username, :string
    add_index :tutors, :username, unique: true
  end
end
