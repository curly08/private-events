class AddForeignKeysToInvites < ActiveRecord::Migration[6.1]
  def change
    add_reference :invites, :event, index: true, foreign_key: { to_table: :events }
    add_reference :invites, :invitee, index: true, foreign_key: { to_table: :users }
  end
end
