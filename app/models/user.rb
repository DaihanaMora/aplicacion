class User < ActiveRecord::Base
	has_many :lists
	has_many :clinics, through: :lists

  belongs_to :entity
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  mount_uploader :avatar, AvatarUploader

  enum role: [:AdminUser,:users,:clinics] 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable ,:confirmable


         def name_all
         	name + ' ' + lastname
         end


 before_create :set_role

  def set_role
     self.role = :users
  end 

end

