class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email,              null: false, default: ""
      t.string :password_digest
      t.string :teacher_id

      t.timestamps null: false
    end
  end
end
