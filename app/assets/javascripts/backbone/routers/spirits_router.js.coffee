class Spirits.Routers.SpiritsRouter extends Backbone.Router
  initialize: (options) ->
    @spirits = new Spirits.Collections.SpiritsCollection()
    @spirits.reset options.spirits

  routes:
    "/new"      : "newSpirit"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newSpirit: ->
    @view = new Spirits.Views.Spirits.NewView(collection: @spirits)
    $("#spirit").html(@view.render().el)

  index: ->
    @view = new Spirits.Views.Spirits.IndexView(spirits: @spirits)
    $("#spirits").html(@view.render().el)

  show: (id) ->
    spirit = @spirits.get(id)

    @view = new Spirits.Views.Spirits.ShowView(model: spirit)
    $("#spirit").html(@view.render().el)

  edit: (id) ->
    spirit = @spirits.get(id)

    @view = new Spirits.Views.Spirits.EditView(model: spirit)
    $("#spirit").html(@view.render().el)
