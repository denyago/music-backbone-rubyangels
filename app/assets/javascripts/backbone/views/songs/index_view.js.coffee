Music.Views.Songs ||= {}

class Music.Views.Songs.IndexView extends Backbone.View
  template: JST["backbone/templates/songs/index"]

  events :
    "click #refresh-songs" : "refresh"

  initialize: () ->
    @options.songs.bind('reset', @addAll)

  addAll: () =>
    @$("tbody").empty()
    @options.songs.each(@addOne)

  refresh: (e) =>
    e.preventDefault()
    e.stopPropagation()
    @options.songs.fetch(reset: true)

  addOne: (song) =>
    view = new Music.Views.Songs.SongView({model : song})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(songs: @options.songs.toJSON() ))
    @addAll()

    return this
