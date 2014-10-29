class CreateM6s < ActiveRecord::Migration
  def change
    create_table :m6s do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.references :quiz, index: true

      t.timestamps
    end
  end
end
