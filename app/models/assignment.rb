class Assignment < ActiveRecord::Base
  belongs_to :classroom
  has_many :homeworks
end
