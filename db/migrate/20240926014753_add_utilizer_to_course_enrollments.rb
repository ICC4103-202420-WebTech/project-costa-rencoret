class AddUtilizerToCourseEnrollments < ActiveRecord::Migration[6.0]
  def change
    add_reference :course_enrollments, :utilizer, null: false, foreign_key: true, default: /* default_utilizer_id */
  end
end
