# :nodoc:
class Todo < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }

  validates :description, presence: true, length: { maximum: 150 }

  belongs_to :user
end
