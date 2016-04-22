class Clinic < ActiveRecord::Base
	has_many :lists

	has_many :users, through: :lists

	has_and_belongs_to_many :entities

    #esta linea 
	def list_count
		self.lists.where("created_at >= ?", DateTime.now.beginning_of_day).select(:user_id).distinct.count
	end
end
