class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :bio
      t.text :hobby
      t.string :work

      t.timestamps 
    end
  end
end