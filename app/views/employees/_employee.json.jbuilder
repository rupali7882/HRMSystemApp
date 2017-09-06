json.extract! employee, :id, :fname, :lname, :join_date, :dob, :gender, :middle_name, :phone, :created_at, :updated_at
json.url employee_url(employee, format: :json)
