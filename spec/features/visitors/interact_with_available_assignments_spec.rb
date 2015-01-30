# Feature: Interact with assignments from student's classrooms
#   As a visitor
#   I want to see assignments a student can claim
#   So I can see what assignments a student can claim
feature "Interact with assignments associated with a student's classrooms" do
  # Scenario: No complete assignments / homework
  #   Given I am a visitor
  #   When I view a student
  #   Then I see the assignments available to that student in a classroom.
  scenario 'visitor can see assignments from a classroom' do
    student = create(:student, name: 'Gregory House')
    classroom = student.classrooms.create(name: 'Nephrology')
    classroom.assignments.create(name: 'Kidney Extraction')

    visit student_path(student)

    within "#classroom-#{classroom.id}" do
      expect(page).to have_content 'Kidney Extraction'
    end
  end
end
