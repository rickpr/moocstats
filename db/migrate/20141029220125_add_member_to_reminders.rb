class AddMemberToReminders < ActiveRecord::Migration
  def change
    add_column :reminders, :member, :string
  end
end
