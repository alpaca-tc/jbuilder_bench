# README

## endpoint

```
GET /api/normal_posts
GET /api/optimized_posts
```

## setup

```
$ ./bin/setup
```

```
$ ./bin/rails c 

# Create posts and comments
100.times do
  post = Post.new
  10.times { post.comments.build }
  post.save!
end
```
