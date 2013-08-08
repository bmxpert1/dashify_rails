class Widget
  constructor: (@scope, @connector) ->
    @defaultValue = @scope.data('dr-value')
    @init()
  
    if @scope.data('dr-channel')    
      chan = @scope.data('dr-channel')
      @channel = @connector.dispatcher.subscribe chan

      @channel.bind 'update', (value) =>
        @update value
    
@.Widget = Widget
