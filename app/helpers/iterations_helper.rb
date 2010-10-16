module IterationsHelper
  include InheritedResourcesHelper
  include ApplicationHelper

  def show_attributes(r)
    [:created_at]
  end
end