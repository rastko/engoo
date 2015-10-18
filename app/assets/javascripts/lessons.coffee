# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
Lesson = {}

class Lesson
  constructor: ()->
    console.log "HERE"
    @bindEvents()

  ui:
    cancelLesson: $("button.cancel-lesson")

  bindEvents: ()->
    self = @
    @ui.cancelLesson.on "click", ()->
      lessonId = $(@).data('lesson')
      $.ajax '/lessons/' + lessonId,
        type: 'delete'
        dataType: 'json'
        success: ()=>
          $(@).parent('.col-lg-3').fadeOut()

new Lesson()