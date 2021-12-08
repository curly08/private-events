class DropInvitesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :invites do |t|
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.integer "invited_event_id"
      t.integer "invitee_id"
      t.index ["invited_event_id"], name: "index_invites_on_invited_event_id"
      t.index ["invitee_id"], name: "index_invites_on_invitee_id"
    end
  end
end
