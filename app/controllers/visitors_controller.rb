class VisitorsController < ApplicationController
  def index
    @classrooms = Classroom.all
    @students = Student.all
  end
end
