class Item < ActiveRecord::Base
  belongs_to :project
  has_many :iterations, :order => 'created_at DESC'

  before_save :create_first_iteration

  def create_first_iteration
    self.iterations.build if self.iterations.empty?
  end
end