class Utilizer < ApplicationRecord
    has_many :courses, foreign_key: :teacher_id
    has_many :questions
    has_many :answers
    validates :email, :login, :password, :name, :last_name, :role, presence: true
    validates :email, uniqueness: true
  end
  