class CreateM5s < ActiveRecord::Migration
  def change
    create_table :m5s do |t|
      t.string :one
      t.string :two
      t.string :three
      t.references :quiz, index: true

      t.timestamps
    end
  end
end
