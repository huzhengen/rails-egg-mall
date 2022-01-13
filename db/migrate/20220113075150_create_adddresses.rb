class CreateAdddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :adddresses do |t|
      t.integer :user_id
      t.string :address_type
      t.string :contact_name, :cellphone, :address, :zipcode

      t.timestamps
    end

    add_index :adddresses, [:user_id, :address_type]
  end
end
