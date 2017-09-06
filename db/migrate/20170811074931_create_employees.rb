class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lname
      t.date :join_date
      t.date :dob
      t.string :gender
      t.integer :salary
      t.string :middle_name
      t.string :phone
      t.integer :department_id
      t.date :experience
      t.string :street
      t.string :city
      t.string :state
      t.integer :pincode
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
