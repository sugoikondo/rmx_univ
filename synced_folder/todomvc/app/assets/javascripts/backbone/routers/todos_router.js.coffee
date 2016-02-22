class Todomvc.Routers.TodosRouter extends Backbone.Router
  initialize: (options) ->
    @todos = new Todomvc.Collections.TodosCollection()
    @todos.reset options.todos

  routes:
    "new"      : "newTodo"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newTodo: ->
    @view = new Todomvc.Views.Todos.NewView(collection: @todos)
    $("#new_todo").html(@view.render().el)

  index: ->
    @view = new Todomvc.Views.Todos.IndexView(collection: @todos)
    $("#todos").html(@view.render().el)

  show: (id) ->
    todo = @todos.get(id)

    @view = new Todomvc.Views.Todos.ShowView(model: todo)
    $("#todos").html(@view.render().el)

  edit: (id) ->
    todo = @todos.get(id)

    @view = new Todomvc.Views.Todos.EditView(model: todo)
    $("#todos").html(@view.render().el)
