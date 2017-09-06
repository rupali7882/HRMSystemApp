# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#  create user 
 user = User.new(:email => 'hr@gmail.com', :password => '12345678', :fname=> 'Rupali', :lname=>'Patil')
 user.add_role 'hr'
 user.save

# Department
# ['Design','Andriod','Graphics','.Net','Php','Ruby on Rails','Pythan','other'].each do |dpt|
#    department = Department.new(:name=> dpt)
#    department.save
# end

# ['admin', 'Employee', 'HR'].each do |role|
#   Role.find_or_create_by({name: role})
# end