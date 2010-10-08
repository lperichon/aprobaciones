module ApplicationHelper
  # Usage:
  #   <% rest_in_place(obj) do |rip| -%>
  #     ... markup ...
  #     <%= rip.editable :field %>
  #     ... markup ...
  #   <% end -%>

  def rest_in_place(obj, url = nil)
    url ||= url_for(obj)
    yield RIP_Builder.new(url, obj)
  end

  class RIP_Builder
    include ActionView::Helpers::TagHelper
    def initialize(url, obj)
      @url = url + "?"
      @obj = obj
      @name = ActionController::RecordIdentifier.dom_class(obj)
    end

    def editable(field, type = 'input')

      content_tag(:span, @obj.send(field), :class => 'rest_in_place', 'data-object' => @name, 'data-attribute' => field, 'data-url' => @url, 'data-formtype' => type)
    end
  end
end