#= require ./nvd3/lib/d3.v3
#= require ./nvd3/lib/fisheye
#= require ./nvd3/src/core
#= require ./nvd3/src/tooltip
#= require ./nvd3/src/utils.js
#= require_tree ./nvd3/src/models
#= require set-nvd3-env.js.erb
#= require websocket_rails/main
#= require jquery.gridster

$ ->
  $(".gridster ul").gridster
    widget_margins: [10,10]
    widget_base_dimensions: [140,140]
    