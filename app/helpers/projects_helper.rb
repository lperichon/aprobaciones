module ProjectsHelper
  include InheritedResourcesHelper
  def list_attributes(r)
    [:name]
  end
end
