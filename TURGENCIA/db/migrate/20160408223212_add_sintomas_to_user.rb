class AddSintomasToUser < ActiveRecord::Migration
  def change
  	add_column :users, :sintomas, :string  

  end
end
