class VisitorsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end
end
