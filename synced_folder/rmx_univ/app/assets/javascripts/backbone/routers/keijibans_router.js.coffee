class RmxUniv.Routers.KeijibansRouter extends Backbone.Router
  initialize: (options) ->
    @keijibans = new RmxUniv.Collections.KeijibansCollection()
    @keijibans.reset options.keijibans

  routes:
    "new"      : "newKeijiban"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newKeijiban: ->
    @view = new RmxUniv.Views.Keijibans.NewView(collection: @keijibans)
    $("#keijibans").html(@view.render().el)

  index: ->
    @view = new RmxUniv.Views.Keijibans.IndexView(collection: @keijibans)
    $("#keijibans").html(@view.render().el)

  show: (id) ->
    keijiban = @keijibans.get(id)

    @view = new RmxUniv.Views.Keijibans.ShowView(model: keijiban)
    $("#keijibans").html(@view.render().el)

  edit: (id) ->
    keijiban = @keijibans.get(id)

    @view = new RmxUniv.Views.Keijibans.EditView(model: keijiban)
    $("#keijibans").html(@view.render().el)
