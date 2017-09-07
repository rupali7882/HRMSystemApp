class AddAgeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :mobile, :string
    add_column :users, :work_mobile, :string
    add_column :users, :dob, :date
    add_column :users, :content, :text
    add_column :users, :sec_email, :string
  end
end
