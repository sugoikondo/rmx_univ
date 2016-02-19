class RmxUniv.Models.Keijiban extends Backbone.Model
  paramRoot: 'keijiban'

  defaults:

class RmxUniv.Collections.KeijibansCollection extends Backbone.Collection
  model: RmxUniv.Models.Keijiban
  url: '/keijibans'
