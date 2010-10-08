module ItemsHelper
  include InheritedResourcesHelper
  include ApplicationHelper

    def show_attributes(r)
    [:name, :closed]
  end
end