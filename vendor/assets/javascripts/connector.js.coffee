#= require websocket_rails/main

class Connector
  constructor: ->
    @dispatcher = new WebSocketRails("#{document.location.host}/websocket")

    @dispatcher.on_open = (data) ->
      console.log 'connection has been established'

    @dispatcher.bind 'connection_closed', ->
      console.log 'connection closed'

    @initWidgets()

  initWidgets: =>
    $('.dr-widget').each (i,v) =>
      $widget = $(v)
      type = @cap $widget.data('dr-type')
      instance = eval("new window.Widget.#{type}($widget, _this)")
  
  cap: (string) ->
    string.charAt(0).toUpperCase() + string.slice(1)

$ ->
  new Connector()