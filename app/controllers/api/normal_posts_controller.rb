class Api::NormalPostsController < Api::ApplicationController
  def index
    @posts = Post.preload(:comments)
  end
end
