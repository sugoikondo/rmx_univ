RmxUniv.Views.Keijibans ||= {}

class RmxUniv.Views.Keijibans.ShowView extends Backbone.View
  template: JST["backbone/templates/keijibans/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
