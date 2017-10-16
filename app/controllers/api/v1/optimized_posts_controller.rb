class Api::V1::OptimizedPostsController < Api::ApplicationController
  def index
    @posts = Post.preload(:comments)
  end

  private

  def details_for_lookup
    {
      locale: [],
      formats: [:json],
      variants: [],
      handlers: [:jbuilder]
    }
  end
end
