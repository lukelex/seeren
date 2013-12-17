class Seeren::ComponentsController < ActionController::Base
  # respond_with :html

  layout "component"

  def view
    @view_config = build_view_config
    render nothing: true, layout: "seeren/layouts/component"
  end

  private
  def build_view_config
    @view_config ||= Seeren::ViewConfig.new(
      width: params[:width],
      height: params[:height],
      view: Seeren.mapping[params[:component]]["view"],
      js: Seeren.mapping[params[:component]]["javascript"],
      css: Seeren.mapping[params[:component]]["stylesheet"]
    )
  end
end
