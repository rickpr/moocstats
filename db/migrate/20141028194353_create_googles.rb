class CreateGoogles < ActiveRecord::Migration
  def change
    create_table :googles do |t|
      t.string :member
      t.string :email
      t.references :student, index: true

      t.timestamps
    end
  end
end
