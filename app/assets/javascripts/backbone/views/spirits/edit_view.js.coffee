Spirits.Views.Spirits ||= {}

class Spirits.Views.Spirits.EditView extends Backbone.View
  template : JST["backbone/templates/spirits/edit"]

  events :
    "submit #edit-spirit" : "update",

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (spirit) =>
        @model = spirit
        window.location.hash = "/#{@model.id}"
        window.$("#spirit").hide()
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))
    $(@el).show();

    this.$("form").backboneLink(@model)

    return this
