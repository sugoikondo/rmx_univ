class Todomvc.Models.Todo extends Backbone.Model
  paramRoot: 'todo'

  defaults:
    task: null
    done: false

  toggle: () ->
    console.log("toggle")
    this.save({done: !this.get('done')})

class Todomvc.Collections.TodosCollection extends Backbone.Collection
  model: Todomvc.Models.Todo
  url: '/todos'

  done: () ->
    return this.where({done: true})

  yet: () ->
    return this.where({done: false})
