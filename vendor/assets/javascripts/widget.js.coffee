class Widget
  constructor: (@scope, @connector) ->
    @init()
  
    if @scope.data('dr-channel')    
      @chan = @scope.data('dr-channel')
      @channel = @connector.dispatcher.subscribe @chan

      @channel.bind 'update', (value) =>
        @update value
    
@.Widget = Widget
