class NotificationRelayJob < ApplicationJob
  queue_as :default

  def perform(notification,lr)

    html = ApplicationController.render partial: "/entitlements/notification", locals: {leave_reqst: lr}, formats: [:html]
    ActionCable.server.broadcast "notifications:#{notification.recipient_id}", html: html
  end
end
