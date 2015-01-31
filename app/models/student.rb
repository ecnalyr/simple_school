class Student < ActiveRecord::Base
  has_and_belongs_to_many :classrooms
  has_many :homeworks
  has_many :assignments, through: :homeworks
end
