class AddUserTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :usertype_id, :integer
  end
end
