Todomvc.Views.Todos ||= {}

class Todomvc.Views.Todos.EditView extends Backbone.View
  template: JST["backbone/templates/todos/edit"]

  events:
    "submit #edit-todo": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (todo) =>
        @model = todo
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    console.log("edit_view")
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
