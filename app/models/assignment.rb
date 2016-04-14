class Assignment < ActiveRecord::Base
  validates :name, presence: true
  validates :complete, presence: true
  validates :points_possible, presence: true
  validates :points_received, presence: true

  belongs_to :course
end
