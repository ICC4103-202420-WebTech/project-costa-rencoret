class Course < ApplicationRecord
  belongs_to :teacher, class_name: 'Utilizer', foreign_key: 'teacher_id'
  has_many :lessons, dependent: :destroy # Deletes associated lessons
  has_many :course_enrollments, dependent: :destroy # Deletes associated course enrollments
  has_many :enrolled_students, through: :course_enrollments, source: :utilizer
  has_many :course_progresses, dependent: :destroy # Deletes associated course progresses

  validates :name, :category, :teacher_id, presence: true
end
