class AuditLog < ApplicationRecord
  belongs_to :user
  AuditLog.create!(user_id: User.last.id)
end
