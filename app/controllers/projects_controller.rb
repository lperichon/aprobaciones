class ProjectsController < InheritedResources::Base

  def collection
    get_collection_ivar || set_collection_ivar(end_of_association_chain.paginate(:page => params[:page], :per_page => 10))
  end

end
