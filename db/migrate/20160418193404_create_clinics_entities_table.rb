class CreateClinicsEntitiesTable < ActiveRecord::Migration
  def change
    
    create_table :clinics_entities, id: false do |t|
	   t.belongs_to :clinic, index: true
       t.belongs_to :entity, index: true
    end

  end
end
