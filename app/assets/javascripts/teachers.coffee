# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
Teachers = {}
Teachers.Schedule = {}

class Teachers.Schedule.Model
  save: (data)->
    $.ajax '/schedules',
      type: 'post'
      data: data
      dataType: 'json'

class Teachers.Schedule.View
  ui:
    bookSchedule: $("button.book")

  model: new Teachers.Schedule.Model

  constructor: ()->
    @bindEvents()

  bindEvents: ()->
    self = @
    @ui.bookSchedule.on 'click', (e)->
      tId = $(@).data('teacher')
      date = $(@).data('date')
      request = self.model.save({ teacherId: tId, date: date })
      request.success ()=>
        $(@).replaceWith("<p class='text-danger'>BOOKED</p>")

new Teachers.Schedule.View
