json.call(post, :id, :created_at, :updated_at)
json.comments(post.comments, partial: 'comments/comment', as: :comment)
