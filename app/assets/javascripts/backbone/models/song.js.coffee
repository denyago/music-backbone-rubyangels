class Music.Models.Song extends Backbone.Model
  paramRoot: 'song'

  secureAttributes: [
    'created_at', 'updated_at', 'id'
  ]

  defaults:
    name: null
    file: null
    artist: null

  toJSON: ->
    @_cloneAttributes();

  _cloneAttributes: ->
    attributes = _.clone(@attributes)
    for sa in @secureAttributes
      delete attributes[sa]
    _.clone(attributes)

class Music.Collections.SongsCollection extends Backbone.Collection
  model: Music.Models.Song
  url: '/songs'
