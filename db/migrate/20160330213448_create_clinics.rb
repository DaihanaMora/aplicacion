class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address
      t.string :eps_asociada

      t.timestamps null: false
    end
  end
end
