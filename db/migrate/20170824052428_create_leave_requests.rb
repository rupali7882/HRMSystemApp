class CreateLeaveRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :leave_requests do |t|
      t.integer :employee_id
      t.date :start_date
      t.date :end_date
      t.integer :entitlement_id
      t.text :reason
      t.integer :days
      t.integer :user_id
      t.integer :status

      t.timestamps
      t.timestamps
    end
  end
end
