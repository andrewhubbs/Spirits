Spirits.Views.Spirits ||= {}

class Spirits.Views.Spirits.NewView extends Backbone.View
  template: JST["backbone/templates/spirits/new"]

  events:
    "submit #new-spirit": "save"

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
      success: (spirit) =>
        @model = spirit
        window.location.hash = "/#{@model.id}"

      error: (spirit, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
