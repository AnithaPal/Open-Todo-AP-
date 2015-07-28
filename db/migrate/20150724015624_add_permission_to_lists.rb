class AddPermissionToLists < ActiveRecord::Migration
  def change
    add_column :lists, :permission, :string, default: 'public'
  end
end
