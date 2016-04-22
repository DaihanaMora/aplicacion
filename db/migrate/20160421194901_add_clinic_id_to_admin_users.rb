class AddClinicIdToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :clinic_id, :integer
  end
end
