class CreateStudentsqlis < ActiveRecord::Migration
  def change
    create_table :studentsqlis do |t|
      t.string :name
      t.string :age

      t.timestamps null: false
    end
  end
end
