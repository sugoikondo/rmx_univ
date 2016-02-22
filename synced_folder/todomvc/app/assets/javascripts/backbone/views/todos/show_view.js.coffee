Todomvc.Views.Todos ||= {}

class Todomvc.Views.Todos.ShowView extends Backbone.View
  template: JST["backbone/templates/todos/show"]

  render: ->
    console.log("show_view")
    @$el.html(@template(@model.toJSON() ))
    return this
