Subscription = {}

class Subscription.Model
  path: "/subscriptions"
  attributes:
    id: null

class Subscription.View
  ui:
    button: $("#subscription-modal button")
  model: new Subscription.Model

  constructor: ()->
    @bindEvents()

  bindEvents: ()->
    @ui.button.on 'click', (e)->
      e.preventDefault()
      e.stopPropagation()
      id = $(@).data('id')
      current_user_id = window.memberId
      $.ajax "/users/#{current_user_id}",
        type: 'patch'
        data: { subscriptionId: id }
        dataType: 'json'
        success: (data)->
          console.log data
        error: ->
          console.log "error"

new Subscription.View