module OptimizeJBuilderPartialRendering
  def render_partial(event)
    super unless event.payload[:identifier].end_with?('.jbuilder')
  end
end

ActiveSupport.on_load(:action_view) do
  ActionView::LogSubscriber.prepend(OptimizeJBuilderPartialRendering)
end
