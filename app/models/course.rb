class Course < ApplicationRecord
  belongs_to :teacher, class_name: 'Utilizer', foreign_key: 'teacher_id'
  has_many :lessons
  has_many :course_enrollments
  has_many :enrolled_students, through: :course_enrollments, source: :utilizer
  has_many :course_progresses

  validates :name, :category, :teacher_id, presence: true
end
