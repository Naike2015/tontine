class AddNameToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :name, :string
    add_reference :invitations, :group, index: true
    add_foreign_key :invitations, :groups
  end
end
