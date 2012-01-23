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
        $("#spirit").slideUp()
    )

  render : ->
    $(@el).html(@template(@model.toJSON() )).slideDown()

    this.$("form").backboneLink(@model)

    return this
