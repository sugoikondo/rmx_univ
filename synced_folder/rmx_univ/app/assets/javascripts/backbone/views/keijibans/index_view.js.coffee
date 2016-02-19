RmxUniv.Views.Keijibans ||= {}

class RmxUniv.Views.Keijibans.IndexView extends Backbone.View
  template: JST["backbone/templates/keijibans/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (keijiban) =>
    view = new RmxUniv.Views.Keijibans.KeijibanView({model : keijiban})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(keijibans: @collection.toJSON() ))
    @addAll()

    return this
