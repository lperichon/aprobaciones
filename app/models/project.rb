class Project < ActiveRecord::Base
  validates :name, :presence => true
  validates :owner_email, :presence => true
  validates :owner_organization, :presence => true
end