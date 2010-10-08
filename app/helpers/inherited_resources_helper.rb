module InheritedResourcesHelper
  def list_attributes(r)
    r.attributes.keys
  end

  def show_attributes(r)
    r.attributes.keys
  end

  def element_actions(r)
    [:show, :edit, :destroy]
  end

  def list_actions
    actions = []
    actions << link_to("New", new_resource_url, :class => 'button')
    actions
  end
end