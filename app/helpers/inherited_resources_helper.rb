module InheritedResourcesHelper
  def list_attributes(r)
    r.attributes
  end

  def element_actions
    [:show, :edit, :destroy]
  end

  def list_actions
    actions = []
    actions << link_to("New", new_resource_url)
    actions
  end
end