class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comments
      t.string :upvotes
      t.references :student, index: true

      t.timestamps
    end
  end
end
