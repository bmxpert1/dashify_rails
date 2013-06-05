class Test extends Widget
  init: ->

  update: (value) =>
    @scope.html(value)

@.Widget.Test = Test