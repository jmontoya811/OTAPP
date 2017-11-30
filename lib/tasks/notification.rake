namespace :notification do
  desc "send SMS notification to employees requesting them to log OT"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashhboard to request overtime or confirm your hours for last week: https://wlp-overtime-ap.herokuapp.com"

      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
    end
  end

    desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
      task manager_email: :environment do
        puts "I'm in the manager email"

        submitted_posts = Post.submitted 
        admin_users = AdminUser.all

        if submitted_posts.count > 0
          admin_users.each do |admin|
            ManagerMailer.email(admin).deliver_now
        end
    end
  end
end