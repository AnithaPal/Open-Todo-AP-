class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :name, presence: true, uniqueness: true
  validates :permission, inclusion: { in: %w(public private open),
    message: "%{It is not a valid permission value" }
end
