class Course < ActiveRecord::Base
  validates :name, presence: true
  validates :credit_hours, presence: true

  has_many :assignments
end
