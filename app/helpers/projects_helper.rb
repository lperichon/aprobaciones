module ProjectsHelper
  include InheritedResourcesHelper
  def list_attributes(r)
    [:name, :owner_email]
  end

  def element_actions(r)
    element_actions = []
    element_actions.concat r.state_transitions.collect {|t| t.event}
    element_actions.concat [:show, :edit, :destroy]
  end
end
