class Clock extends Widget
  init: ->
    setInterval(@startTime, 500)

  startTime: =>
    today = new Date()

    h = today.getHours()
    m = today.getMinutes()
    s = today.getSeconds()
    m = @formatTime(m)
    s = @formatTime(s)
    @update(h + ":" + m + ":" + s, today.toDateString())

  formatTime: (i) ->
    if i < 10 then "0" + i else i

  update: (time, date) =>
    @scope.find('.time').html(time)
    @scope.find('.date').html(date)

@.Widget.Clock = Clock