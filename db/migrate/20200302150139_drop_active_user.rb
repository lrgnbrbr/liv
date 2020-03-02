class DropActiveUser < ActiveRecord::Migration[6.0]
  def change
  drop_table :active_users
  end
end
