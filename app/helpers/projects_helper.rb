module ProjectsHelper
  include InheritedResourcesHelper
  def list_attributes(r)
    [:name, :owner_organization, :owner_email]
  end
end
