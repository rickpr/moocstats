class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.references :student, index: true

      t.timestamps
    end
  end
end
