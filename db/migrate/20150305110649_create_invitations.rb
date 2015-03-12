class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :status
      t.string :email
      t.string :invitation_source

      t.timestamps null: false
    end
  end
end
