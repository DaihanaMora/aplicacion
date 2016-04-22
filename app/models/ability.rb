class Ability
  include CanCan::Ability

  def initialize(user)
    admin ||= AdminUser.new # guest user (not logged in)
    
    case admin.role        
      when 'admin_clinic'
        cannot :read, Clinic
        can :read, ActiveAdmin::Page, :name => "Dashboard"
        can :manage, List, :clinic_id => admin.clinic_id
        can :manage, Clinic, :id => admin.clinic_id
      when 'superadmin'
        can :manage, :all
    end

  end

    
end
