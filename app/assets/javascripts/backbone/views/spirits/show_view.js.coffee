Spirits.Views.Spirits ||= {}

class Spirits.Views.Spirits.ShowView extends Backbone.View
  template: JST["backbone/templates/spirits/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
