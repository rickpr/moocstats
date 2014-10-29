class AddMemberToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :member, :string
  end
end
