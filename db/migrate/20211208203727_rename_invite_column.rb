class RenameInviteColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :invites, :event_id, :invited_event_id
  end
end
