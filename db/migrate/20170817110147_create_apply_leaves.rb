class CreateApplyLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :apply_leaves do |t|
      t.integer :employee_id
      t.date :start_date
      t.date :end_date
      t.integer :entitlement_id
      t.text :reason
      t.integer :days
      t.integer :user_id

      t.timestamps
    end
  end
end
