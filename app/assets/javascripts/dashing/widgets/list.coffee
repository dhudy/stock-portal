class Dashing.List extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered
    if @get('unordered')
      $(@node).find('ol').remove()
    else
      $(@node).find('ul').remove()

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # stocks = []
    # theValues = $(@node).find('.valueul')
    # $(@node).find('.labelul').each (item, value) ->
    #   stockVal = theValues[item].innerText
    #   toAdd = value.innerText
    #   console.log(theValues[item].innerText)
    #   toAdd = toAdd + ", " + stockVal
    #   stocks.push(toAdd)
    #
    # console.log(stocks)
    # console.log($(@node).find('.labelul'))
    # console.log($(@node).find('.valueul'))
