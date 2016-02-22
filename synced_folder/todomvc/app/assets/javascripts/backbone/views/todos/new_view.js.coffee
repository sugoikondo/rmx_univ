Todomvc.Views.Todos ||= {}

class Todomvc.Views.Todos.NewView extends Backbone.View
  template: JST["backbone/templates/todos/new"]

  events:
    "submit #new-todo": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (todo) =>
        @model = todo
        this.remove()
        window.location.hash = "/index"

      error: (todo, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    console.log("new_view")
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
