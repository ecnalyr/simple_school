class Homework < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :student
  has_one :classroom, through: :assignment
end
