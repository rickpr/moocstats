class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :posts
      t.string :upvotes
      t.references :student, index: true

      t.timestamps
    end
  end
end
