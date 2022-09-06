class Contestant < ApplicationRecord
  validates_presence_of :name, :age, :hometown, :years_of_experience

  validates :name, presence: true
  validates :age, presence: true
  validates :hometown, presence: true
  validates :years_of_experience, presence: true

  has_many :contestant_projects
  has_many :projects, through: :contestant_projects

end
