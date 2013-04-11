class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :rocketeers, :admin, :boolean, :default => false
  end
end
