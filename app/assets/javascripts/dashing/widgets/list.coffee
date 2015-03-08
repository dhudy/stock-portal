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
    $(@node).fadeOut().fadeIn()
    stocks = []
    theValues = $(@node).find('.valueul')
    $(@node).find('.labelul').each (item, value) ->
      toAdd = value.innerText
      console.log(theValues[item])
      toAdd = toAdd + " " + value
      stocks.push(toAdd)

    console.log(stocks)
    # console.log($(@node).find('.labelul'))
    # console.log($(@node).find('.valueul'))
