class Utilizer < ApplicationRecord
    has_many :courses, foreign_key: :teacher_id
    has_many :questions
    has_many :answers
    has_many :course_enrollments
    has_many :enrolled_courses, through: :course_enrollments, source: :course
    has_many :course_progresses
    validates :email, :login, :password, :name, :last_name, :role_id, presence: true
    validates :email, uniqueness: true

    enum role_id:{
      student: 0,
      teacher: 1
    }
    
    def full_name
      "#{name} #{last_name}"
    end

  end
  