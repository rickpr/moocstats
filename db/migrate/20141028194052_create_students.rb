class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :cid
      t.string :grade
      t.string :result
      t.string :sigtrack
      t.string :group

      t.timestamps
    end
  end
end
