class Item < ActiveRecord::Base
  belongs_to :list
  has_many :items

  validates :description, presence: true

end
