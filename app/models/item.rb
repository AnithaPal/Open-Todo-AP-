class Item < ActiveRecord::Base
  belongs_to :list
  has_many :items

  validates :name, presence: true
end
