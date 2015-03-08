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
    $(@node).find('.labelul').each (item, value) ->
      console.log(value.innerText)
      toAdd = value.innerText
      value = $(@node).find('.valueul').get(item)
      toAdd = toAdd + " " + value
      stocks.push(toAdd)

    console.log(stocks)
    # console.log($(@node).find('.labelul'))
    # console.log($(@node).find('.valueul'))
