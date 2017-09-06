class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.integer :user_id
      t.integer :employee

      t.timestamps
    end
  end
end
