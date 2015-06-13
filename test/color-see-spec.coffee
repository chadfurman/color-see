describe 'ColorSee picture', ->
  defaultImage = '/main/assets/images/default.jpg'

  it 'should start out as a default image', ->
    expect(element(By.id('picture')).getAttribute('src')).not.toBe(defaultImage)

  it 'should change to the new data-url when the "new-picture" event is $emit\'d', ->
    oldSrc = element(By.id('picture')).getAttribute('src')
    element(By.id('new-picture-button')).click()
    expect(element(By.id('picture')).getAttribute('src')).not.toBe(oldSrc)

  it 'should fill the width of the viewport', ->
    element(By.css('#picture.full-image').isPresent()).toBe(true)

describe 'Color box', ->
  it 'should start out hidden', ->
    element(By.id()).isDisplayed().then( (isDisplayed) ->

    )

  it 'should become visible when clicking on the ColorSee picture', ->

  it 'should appear with the top left corner at the location the user clicked', ->

  it 'should display the color', ->

  it 'should display a label for the color', ->

describe 'Color name', ->
  it 'should be pulled from a list of colors', ->

  it 'should be the name representing the closest RGB values with a name', ->

describe 'Button to change picture', ->
  it 'should allow the user to select an image from their device', ->

  it 'should $emit "new-picture" event after user-selected image is received', ->
