class Forum < ApplicationRecord
  belongs_to :lesson
  has_many :questions
  validates :title, presence: true
end
