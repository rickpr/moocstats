class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.references :student, index: true

      t.timestamps
    end
  end
end
