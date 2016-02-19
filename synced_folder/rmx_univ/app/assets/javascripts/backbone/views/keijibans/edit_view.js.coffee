RmxUniv.Views.Keijibans ||= {}

class RmxUniv.Views.Keijibans.EditView extends Backbone.View
  template: JST["backbone/templates/keijibans/edit"]

  events:
    "submit #edit-keijiban": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (keijiban) =>
        @model = keijiban
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
