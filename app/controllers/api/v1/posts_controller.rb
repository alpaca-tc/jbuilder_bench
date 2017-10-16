class Api::V1::PostsController < Api::ApplicationController
  def index
    @posts = Post.preload(:comments)
  end
end
