# Feature: Create Student
#   As a visitor
#   I want to create a student
#   So I can have more students
feature 'Create student' do
  # Scenario: Viewing home page
  #   Given I am a visitor
  #   When create a student
  #   Then I see the student in my list of students
  scenario 'visitor can create a student' do
    visit root_path
    click_link 'New Student'
    fill_in 'Name', with: 'John Harbinger'
    click_button 'Create Student'
    within '#list-of-students' do
      expect(page).to have_content 'John Harbinger'
    end
  end
end
