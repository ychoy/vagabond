class AddPrivilegeLevelToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :privilege_level, :integer
  end
end
