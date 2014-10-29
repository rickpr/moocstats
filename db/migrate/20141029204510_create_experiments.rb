class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.references :student, index: true

      t.timestamps
    end
  end
end
