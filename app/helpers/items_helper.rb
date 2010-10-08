module ItemsHelper
  include InheritedResourcesHelper

    def show_attributes(r)
    [:name, :closed]
  end
end