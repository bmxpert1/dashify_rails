class Widget
  constructor: (@scope, @connector) ->
    @init()
    
    @chan = @scope.data('dr-channel')
    @channel = @connector.dispatcher.subscribe @chan

    @channel.bind 'update', (value) =>
      @update value
    
@.Widget = Widget
