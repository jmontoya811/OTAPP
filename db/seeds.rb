@user = User.create!(email: "test@test.com",
                                  password: "asdfasdf", 
                                  password_confirmation: "asdfasdf",
                                  first_name: "Jon", 
                                  last_name: "Snow",
                                  phone: "3854049924")


puts "User Test Created"

AdminUser.create!(email: "admin@test.com",
                                password: "asdfasdf",
                                password_confirmation: "asdfasdf",
                                first_name: "Admin",
                                 last_name: "Test",
                                 phone: "3854049924")


puts "AdminTest Created"



100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content I want to see how it looks with other content, so I'm going to add some more data to our seeds.rb file for the post creation process. I'm making the rationale really long to see how the truncate method is behaving.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Logs have been created"