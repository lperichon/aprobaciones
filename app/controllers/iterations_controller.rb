class IterationsController < InheritedResources::Base
  actions :all, :except => :index

  belongs_to :project, :item

  def create
      create!{ project_item_url(@project, @item) }
  end

  def destroy
      destroy!{ project_item_url(@project, @item) }
  end
end