class Item < ActiveRecord::Base
  belongs_to :list

  validates :description, presence: true
  validates :priority, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }

  default_scope { order(priority: :asc, created_at: :asc) }

end
