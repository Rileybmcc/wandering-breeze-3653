class Project < ApplicationRecord
  validates :name, presence: true
  validates :material, presence: true


  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects
  belongs_to :challenge

  
end
