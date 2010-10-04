class ProjectsController < InheritedResources::Base
  respond_to :js, :only => :update

  def collection
    get_collection_ivar || set_collection_ivar(end_of_association_chain.paginate(:page => params[:page], :per_page => 10))
  end

  def update
    if params[:event]
      resource.send "#{params[:event]}!"
    end
    update!
  end
end
