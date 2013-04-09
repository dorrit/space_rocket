class AddColumnToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :rocketeer_id, :integer
  end
end
