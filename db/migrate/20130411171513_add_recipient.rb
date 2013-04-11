class AddRecipient < ActiveRecord::Migration
  def change
    rename_column :messages, :rocketeer_id, :sender_id
    add_column :messages, :recipient_id, :integer
  end
end
