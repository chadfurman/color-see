picture = element(By.id('picture'))
newPictureButton = element(By.id('new-picture-button'))
colorContainer = element(By.id('color-container'))
color = element(By.id('color'))
colorName = element(By.id('color-name'))

describe 'Basic elements', ->
  it 'should exist', ->
    expect(picture.isPresent()).toBeTruthy()
    expect(newPictureButton.isPresent()).toBeTruthy()
    expect(colorContainer.isPresent()).toBeTruthy()
    expect(color.isPresent()).toBeTruthy()
    expect(colorName.isPresent()).toBeTruthy()

describe 'ColorSee picture', ->
  defaultImage = '/main/assets/images/default.jpg'

  it 'should start out as a default image', ->
    expect(picture.getAttribute('src')).toEqual(defaultImage)

  it 'should change to the new data-url when the "new-picture" event is $emit\'d', ->
    oldSrc = picture.getAttribute('src')
    newPictureButton.click()
    expect(picture.getAttribute('src')).not.toEqual(oldSrc)

  it 'should fill the width of the viewport', ->
    expect(element(picture.getCssValue('width'))).toEqual('100%');

  it 'should be block-level', ->
    expect(element(picture.getCssValue('display'))).toEqual('block');

describe 'Color Container', ->
  expectedX = 0;
  expectedY = 0;

  beforeAll ->
    picture.getLocation().then (location) ->
      expectedX = 2 + location.x;
      expectedY = 2 + location.y;

  it 'should start out hidden', ->
    colorContainer.isDisplayed().then booleanResult ->
      expect(booleanResult).toBeFalsy()

  describe 'when picture is clicked', ->
    beforeAll ->
      #TODO: set picture to a solid-color image


    beforeEach ->
      browser.actions().mouseMove({x: expectedX, y: expectedY}).click()

    it 'should become visible when clicking on the ColorSee picture', ->
      colorContainer.isDisplayed().then booleanResult ->
        expect(booleanResult).toBeTruthy()

    it 'should appear with the top left corner at the location the user clicked', ->
        colorContainer.getLocation.then (location) ->
          expect(location.x).toEqual(expectedX)
          expect(location.y).toEqual(expectedY)

  it 'should display the color', ->
    expect(color.getCssValue('background-color')).toEqual('#121212');

  it 'should display a name for the color', ->
    expect(colorName.getText()).toEqual('#121212');

describe 'Color name', ->
  it 'should be pulled from a list of colors', ->
    #TODO: test for color service

  it 'should be the name corresponding to the RGB value closest to that of the clicked pixel', ->
    #TODO: determine 'approximate colors' and what they match

describe 'Button to change picture', ->
  it 'should allow the user to select an image from their device', ->
    #TODO: spec modal

  it 'should $emit "new-picture" event after user-selected image is received', ->
    #TODO: test for event
