class Classroom < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_many :assignments
  has_many :homeworks, through: :assignments
end
