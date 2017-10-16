class Api::V1::NormalPostsController < Api::ApplicationController
  def index
    @posts = Post.preload(:comments)
  end
end
