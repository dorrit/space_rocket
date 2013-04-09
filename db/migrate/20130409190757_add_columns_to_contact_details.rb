class AddColumnsToContactDetails < ActiveRecord::Migration
  def change
    add_column :contact_details, :phone, :string
    add_column :contact_details, :rocketeer_id, :integer
  end
end
