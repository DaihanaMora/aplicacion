class List < ActiveRecord::Base
	belongs_to :user
	belongs_to :clinic

	validate :multiple_list_validation

	def multiple_list_validation
		lists = List.where(" user_id = ? AND created_at >= ? AND created_at <= ?", user.id, Date.today, Time.now.end_of_day)
		if lists.present?
			errors.add(:multiples_citas, "Un usuario no puede tener multiples citas para un mismo dia")
		end

	end


end
