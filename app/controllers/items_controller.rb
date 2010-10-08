class ItemsController < InheritedResources::Base
  actions :all, :except => :index

  belongs_to :project

  def create
      create!{ project_url(parent) }
  end

  def update
      update!{ project_url(parent) }
  end

  def destroy
      destroy!{ project_url(parent) }
  end

  def collection
    get_collection_ivar || set_collection_ivar(end_of_association_chain.paginate(:page => params[:page], :per_page => 10))
  end
end