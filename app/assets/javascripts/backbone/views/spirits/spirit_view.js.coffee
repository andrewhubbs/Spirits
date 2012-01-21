Spirits.Views.Spirits ||= {}

class Spirits.Views.Spirits.SpiritView extends Backbone.View
  template: JST["backbone/templates/spirits/spirit"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
