AdminUser.create(email: "admin@test.com",
                                password: "asdfasdf",
                                password_confirmation: "asdfasdf",
                                first_name: "Admin",
                                 last_name: "Test",
                                 phone: "13854049924")

puts "AdminTest Created"

@user = User.create(email: "test@test.com",
                                  password: "asdfasdf", 
                                  password_confirmation: "asdfasdf",
                                  first_name: "Jon", 
                                  last_name: "Snow",
                                  phone: "13854049924")

puts "User Test Created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"