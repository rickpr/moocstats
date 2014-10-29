class CreateControlgroups < ActiveRecord::Migration
  def change
    create_table :controlgroups do |t|
      t.references :student, index: true

      t.timestamps
    end
  end
end
