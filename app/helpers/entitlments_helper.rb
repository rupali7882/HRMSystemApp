module EntitlmentsHelper

	def total_leave total
		lv = current_user.leave_requests.where(entitlement_id: total.id)
		lv.empty? ? 0 : lv.collect(&:days).sum
	end

	def watch_notifications
		current_user.leave_requests.where.not(status: nil)
	end
end
