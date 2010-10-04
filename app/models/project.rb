class Project < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates :name, :presence => true
  validates :owner_email, :presence => true
  validates :owner_organization, :presence => true

  state_machine :state, :initial => :on_hold do
    event :hold do
      transition :under_revision => :on_hold
    end

    event :start do
      transition :on_hold => :under_revision
    end

    event :approve do
      transition :under_revision => :approved
    end

    event :reject do
      transition :under_revision => :rejected
    end

    event :archive do
      transition [:on_hold, :under_revision] => :archived
    end

    event :send_feedback do
      transition :under_revision => :awaiting_corrections
    end

    event :restart do
      transition :awaiting_corrections => :under_revision
    end

    state :on_hold
    state :under_revision
    state :awaiting_corrections
    state :approved
    state :rejected
    state :archived

  end
end