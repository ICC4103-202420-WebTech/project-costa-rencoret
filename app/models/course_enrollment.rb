class CourseEnrollment < ApplicationRecord
  belongs_to :student, class_name: 'Utilizer', foreign_key: 'student_id'
  belongs_to :course
  validates :student_id, :course_id, presence: true
end
