class UsersController < InheritedResources::Base
  actions :index, :show, :destroy
end
