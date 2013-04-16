class Music.Routers.SongsRouter extends Backbone.Router
  initialize: (options) ->
    @songs = new Music.Collections.SongsCollection()
    @songs.reset options.songs

  routes:
    "new"      : "newSong"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newSong: ->
    @view = new Music.Views.Songs.NewView(collection: @songs)
    $("#songs").html(@view.render().el)

  index: ->
    @view = new Music.Views.Songs.IndexView(songs: @songs)
    $("#songs").html(@view.render().el)

  show: (id) ->
    song = @songs.get(id)

    @view = new Music.Views.Songs.ShowView(model: song)
    $("#songs").html(@view.render().el)

  edit: (id) ->
    song = @songs.get(id)

    @view = new Music.Views.Songs.EditView(model: song)
    $("#songs").html(@view.render().el)
