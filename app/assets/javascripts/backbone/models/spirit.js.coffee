class Spirits.Models.Spirit extends Backbone.Model
  paramRoot: 'spirit'

  defaults:
    category: null
    name: null
    base: null
    methodology: null
    age: null
    proof: null
    producer: null
    location: null
    miscellaneous: null
    description: null


class Spirits.Collections.SpiritsCollection extends Backbone.Collection
  model: Spirits.Models.Spirit
  url: '/spirits'
