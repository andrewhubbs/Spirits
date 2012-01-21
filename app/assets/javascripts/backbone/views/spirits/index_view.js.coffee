Spirits.Views.Spirits ||= {}

class Spirits.Views.Spirits.IndexView extends Backbone.View
  template: JST["backbone/templates/spirits/index"]

  initialize: () ->
    @options.spirits.bind('reset', @addAll)
    @options.spirits.bind("change", @render)

  addAll: () =>
    @options.spirits.each(@addOne)

  addOne: (spirit) =>
    view = new Spirits.Views.Spirits.SpiritView({model : spirit})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(spirits: @options.spirits.toJSON() ))
    @addAll()

    return this
