class CreateMessagingTable < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.string :text
      t.boolean :public
      t.references :rocketeer

      t.timestamps
    end
  end
end
