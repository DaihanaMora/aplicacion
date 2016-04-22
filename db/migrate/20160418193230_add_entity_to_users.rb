class AddEntityToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :entity, index: true, foreign_key: true
  end
end
