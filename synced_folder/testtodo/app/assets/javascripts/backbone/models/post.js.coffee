class Testtodo.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null

class Testtodo.Collections.PostsCollection extends Backbone.Collection
  model: Testtodo.Models.Post
  url: '/posts'
