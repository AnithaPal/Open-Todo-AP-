class AddPriorityToItems < ActiveRecord::Migration
  def change
    add_column :items, :priority, :integer, default: 5
  end
end
