class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :contribution_order
      t.boolean :founder, default: false
      t.timestamps null: false
      t.references :user, index: true
      t.references :group, index: true
    end
  end
end
