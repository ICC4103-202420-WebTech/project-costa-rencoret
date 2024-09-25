class Lesson < ApplicationRecord
  belongs_to :course
  has_many :forums
  validates :title, :content, presence: true
end