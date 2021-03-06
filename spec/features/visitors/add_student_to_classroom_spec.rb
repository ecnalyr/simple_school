# Feature: Add Student to Classroom
#   As a visitor
#   I want to add a student to a classroom
#   So I can have more classrooms full of students
feature 'Add student to classroom' do
  # Scenario: Viewing a student
  #   Given I am a visitor
  #   When I assign a student to a classroom
  #   Then I see the student within the classroom
  scenario 'visitor can create a classroom' do
    student = create(:student, name: 'Gregory House')
    create(:classroom, name: 'Nephrology')

    visit student_path(student)
    within '#assign-student-to-classroom' do
      check('Nephrology')
      click_button 'Update Student'
    end

    expect(page).to have_content 'Nephrology'
  end
end
