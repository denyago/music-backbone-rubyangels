class Music.Models.Song extends Backbone.Model
  paramRoot: 'song'

  defaults:
    name: null
    file: null
    artist: null

class Music.Collections.SongsCollection extends Backbone.Collection
  model: Music.Models.Song
  url: '/songs'
