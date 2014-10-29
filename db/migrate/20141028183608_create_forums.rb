class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :total
      t.string :web_app_arch_ii
      t.string :general_discussion
      t.string :study_groups
      t.string :lectures
      t.string :assignments
      t.references :student, index: true

      t.timestamps
    end
  end
end
