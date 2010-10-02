class AddOrganizationToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :owner_organization, :string
    add_column :projects, :owner_email, :string
  end

  def self.down
    remove_column :projects, :owner_organization
    remove_column :projects, :owner_email
  end
end
