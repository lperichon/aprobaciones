class Project < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates :name, :presence => true
  validates :owner_email, :presence => true
  validates :owner_organization, :presence => true
end