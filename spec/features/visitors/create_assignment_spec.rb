# Feature: Create Assignment
#   As a visitor
#   I want to create an assignment for a classroom
#   So a classroom can have an additional assignment
feature 'Create assignment' do
  # Scenario: Viewing a classroom
  #   Given I am a visitor
  #   When I create an assignment
  #   Then I see the assignment in the classroom's list of assignments
  scenario 'visitor can create an assignment' do
    classroom = create(:classroom, name: 'Mathematics of Quantum Neutrino Fields')
    visit classroom_path(classroom)
    click_link 'Add Assignment'
    fill_in 'Name', with: 'Busy Work'
    click_button 'Create Assignment'
    within '#list-of-assignments' do
      expect(page).to have_content 'Mathematics'
    end
  end
end
