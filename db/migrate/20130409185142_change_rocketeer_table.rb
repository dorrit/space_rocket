class ChangeRocketeerTable < ActiveRecord::Migration
  def change
    remove_column :rocketeers, :first_name
    remove_column :rocketeers, :last_name   
  end
end
