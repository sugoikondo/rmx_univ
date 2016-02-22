Todomvc.Views.Todos ||= {}

class Todomvc.Views.Todos.TodoView extends Backbone.View
  template: JST["backbone/templates/todos/todo"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()


    return false

  render: ->
    console.log("todo_view")
    @$el.html(@template(@model.toJSON() ))
    return this
