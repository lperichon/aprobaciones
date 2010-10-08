module UsersHelper
  include InheritedResourcesHelper
  include ApplicationHelper

  def list_attributes(r)
    [:email]
  end

  def element_actions(r)
    [:show, :destroy]
  end

  def list_actions
    actions = []
    actions << link_to("Invite", new_user_invitation_url, :class => 'button')
    actions
  end
end
