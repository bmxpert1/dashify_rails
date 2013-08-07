class Areachart extends Widget
  init: =>
    @graph = new Rickshaw.Graph(
      element: @scope[0]
      series: [
        {
          color: "blue",
          data: @defaultValue
        }
      ]
    )

    x_axis = new Rickshaw.Graph.Axis.Time(graph: @graph)
    y_axis = new Rickshaw.Graph.Axis.Y(graph: @graph, tickFormat: Rickshaw.Fixtures.Number.formatKMBT)
    @graph.render()

  update: (value) =>
    if @graph
      @graph.series[0].data = value
      @graph.render()

@.Widget.Areachart = Areachart