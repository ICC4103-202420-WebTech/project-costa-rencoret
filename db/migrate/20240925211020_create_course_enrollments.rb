class CreateCourseEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :course_enrollments do |t|
      t.references :student, foreign_key: { to_table: :utilizers }
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
