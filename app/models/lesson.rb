class Lesson < ApplicationRecord
  belongs_to :course
  has_many :forums, dependent: :destroy
  validates :title, :content, presence: true
end