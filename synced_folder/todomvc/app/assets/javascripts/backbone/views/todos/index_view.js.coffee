Todomvc.Views.Todos ||= {}

class Todomvc.Views.Todos.IndexView extends Backbone.View
  template: JST["backbone/templates/todos/index"]

  events:
    "click .toggle" : "toggleDone"

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (todo) =>
    view = new Todomvc.Views.Todos.TodoView({model : todo})
    @$("tbody").append(view.render().el)

  render: =>
    console.log("index_view")
    @$el.html(@template(todos: @collection.toJSON() ))
    this.$("form").backboneLink(@model)
    console.log(@$el)
    @addAll()

    return this
  toggleDone: () ->
    console.log(Todomvc.Models.Todo)
    this.model.toggle()

