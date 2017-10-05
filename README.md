# Infinite Scroll Challenge

## Summary of Project

This project takes in a JSON file full of Pins and shows all pins on a page with infinite scrolling. Once the last page of pins is loaded, the next page will start back at the beginning relisting the first pins.

## Loading Pins

The JSON file is located in the root folder and labeled as `pins_formatted.json`

The logic for loading the pins using the JSON file is all done inside the PinsHelper located at:

`/app/helpers/pins_helper.rb`

These pins can be loaded using the method `generates_pins(page)` inserting `params[:page]` for the arguments inside a controller.

## Infinite Scrolling

In order to use the infinite scrolling, place widgets inside a `<div id="widgets">` and use pagination with a `<div class="pagination">`

You can render partial the AJAX using `shared/_infinite_scroll.js.erb` with locals `page_partial:` being the partial you want to load and `widgets:` being the widgets you want to load such as `@pins`

## Accessing Pin Information

I accessed the pins manually to display images and information in the views, and the methods used to extract that information are also inside the PinsHelper

## Future Features

The Search Bar and Navigation Bar are not functional at the moment, but are shown and infinite scroll is not affected from these features.

I did not use models in this challenge I am are getting the pins directly from the JSON and was not asked to save them.
