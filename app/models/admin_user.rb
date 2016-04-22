class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  before_create :set_role

  def set_role
  	 self.role = 'admin_clinic'
  end   

  def admin?
  	self.role == "superadmin"
  end

end
