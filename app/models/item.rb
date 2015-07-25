class Item < ActiveRecord::Base
  belongs_to :list

  validates :description, presence: true
  default_scope { order(priority: :asc) }

  private 

  #  def order_by_status_priority_and_date
  #   sorted_by_status = records.sort_by &:completed where {:completed ==  false}
  #   sorted = @records.sort_by &:created_at
  #   sorted = @records.order(:created_at)
  # end

end
