class CreateM1s < ActiveRecord::Migration
  def change
    create_table :m1s do |t|
      t.string :one
      t.string :two
      t.references :quiz, index: true

      t.timestamps
    end
  end
end
