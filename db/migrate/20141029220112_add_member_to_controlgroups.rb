class AddMemberToControlgroups < ActiveRecord::Migration
  def change
    add_column :controlgroups, :member, :string
  end
end
