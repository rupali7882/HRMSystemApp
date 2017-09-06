class CreateEntitlements < ActiveRecord::Migration[5.1]
  def change
    create_table :entitlements do |t|
      t.string :leave_type
      t.float :number_of_leave
      t.integer :employee_id
      t.integer :user_id

      t.timestamps
    end
  end
end
