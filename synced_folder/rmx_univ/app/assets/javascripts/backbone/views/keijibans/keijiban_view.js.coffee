RmxUniv.Views.Keijibans ||= {}

class RmxUniv.Views.Keijibans.KeijibanView extends Backbone.View
  template: JST["backbone/templates/keijibans/keijiban"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
