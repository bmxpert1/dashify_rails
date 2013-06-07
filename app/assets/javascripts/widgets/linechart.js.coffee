class Linechart extends Widget
  init: =>
    @scope.highcharts
      chart:
        type: "spline"
        plotBackgroundImage: null

      title:
        text: "Wind speed during two days"

      subtitle:
        text: "October 6th and 7th 2009 at two locations in Vik i Sogn, Norway"

      xAxis:
        type: "datetime"

      yAxis:
        title:
          text: "Wind speed (m/s)"

        min: 0
        minorGridLineWidth: 0
        gridLineWidth: 0
        alternateGridColor: null
        plotBands: [ # Light air
          from: 0.3
          to: 1.5
          color: "rgba(68, 170, 213, 0.1)"
          label:
            text: "Light air"
            style:
              color: "#606060"
        ,
          # Light breeze
          from: 1.5
          to: 3.3
          color: "rgba(0, 0, 0, 0)"
          label:
            text: "Light breeze"
            style:
              color: "#606060"
        ,
          # Gentle breeze
          from: 3.3
          to: 5.5
          color: "rgba(68, 170, 213, 0.1)"
          label:
            text: "Gentle breeze"
            style:
              color: "#606060"
        ,
          # Moderate breeze
          from: 5.5
          to: 8
          color: "rgba(0, 0, 0, 0)"
          label:
            text: "Moderate breeze"
            style:
              color: "#606060"
        ,
          # Fresh breeze
          from: 8
          to: 11
          color: "rgba(68, 170, 213, 0.1)"
          label:
            text: "Fresh breeze"
            style:
              color: "#606060"
        ,
          # Strong breeze
          from: 11
          to: 14
          color: "rgba(0, 0, 0, 0)"
          label:
            text: "Strong breeze"
            style:
              color: "#606060"
        ,
          # High wind
          from: 14
          to: 15
          color: "rgba(68, 170, 213, 0.1)"
          label:
            text: "High wind"
            style:
              color: "#606060"
        ]

      tooltip:
        valueSuffix: " m/s"

      plotOptions:
        spline:
          lineWidth: 4
          states:
            hover:
              lineWidth: 5

          marker:
            enabled: false

          pointInterval: 3600000 # one hour
          pointStart: Date.UTC(2009, 9, 6, 0, 0, 0)

      series: @scope.data('dr-value')
      navigation:
        menuItemStyle:
          fontSize: "10px"


  update: (value) =>
    
@.Widget.Linechart = Linechart