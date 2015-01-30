# Feature: Create Classroom
#   As a visitor
#   I want to create a classroom
#   So I can have more classrooms
feature 'Create classroom' do
  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When create a classroom
  #   Then I see the classroom in my list of classrooms
  scenario 'visitor can create a classroom' do
    visit root_path
    click_link 'New Classroom'
    fill_in 'Name', with: 'Math'
    click_button 'Create Classroom'
    within '#list-of-classrooms' do
      expect(page).to have_content 'Math'
    end
  end
end
