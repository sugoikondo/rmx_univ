RmxUniv.Views.Keijibans ||= {}

class RmxUniv.Views.Keijibans.NewView extends Backbone.View
  template: JST["backbone/templates/keijibans/new"]

  events:
    "submit #new-keijiban": "save"

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
      success: (keijiban) =>
        @model = keijiban
        window.location.hash = "/#{@model.id}"

      error: (keijiban, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
