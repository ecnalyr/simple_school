# Feature: Interact with assignments from student's classrooms
#   As a visitor
#   I want to see assignments a student can claim
#   So I can see what assignments a student can claim
feature "Interact with assignments associated with a student's classrooms" do
  before :each do
    @student = create(:student, name: 'Gregory House')
    @classroom = @student.classrooms.create(name: 'Nephrology')
    @assignment = @classroom.assignments.create(name: 'Kidney Extraction')
  end

  # Scenario: No complete assignments / homework
  #   Given I am a visitor
  #   When I view a student
  #   Then I see the assignments available to that student in a classroom.
  scenario 'visitor can see assignments from a classroom' do
    visit student_path(@student)

    within "#classroom-#{@classroom.id}" do
      expect(page).to have_content 'Kidney Extraction'
    end
  end
  # Scenario: No complete assignments / homework
  #   Given I am a visitor
  #   When I assign an assignment as homework to a student
  #   Then I see the homework assigned to the student.
  scenario 'visitor can assign homework to a student' do
    visit student_path(@student)

    within "#assignment-#{@assignment.id}" do
      click_button 'Begin working on assignment as homework'
    end

    within "#classroom-#{@classroom.id}-homework" do
      expect(page).to have_content 'Kidney Extraction'
    end
  end
end
