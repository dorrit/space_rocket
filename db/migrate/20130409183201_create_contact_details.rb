class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :apartment_number

      t.timestamps
    end
  end
end
