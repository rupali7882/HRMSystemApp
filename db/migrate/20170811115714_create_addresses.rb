class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :state
      t.string :city
      t.integer :pincode
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end
  end
end
