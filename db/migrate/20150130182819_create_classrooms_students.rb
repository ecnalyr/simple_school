class CreateClassroomsStudents < ActiveRecord::Migration
  def change
    create_table :classrooms_students, :id => false do |t|
      t.references :classroom, :student
    end

    add_index :classrooms_students, [:classroom_id, :student_id],
      name: "classrooms_students_index",
      unique: true
  end
end
