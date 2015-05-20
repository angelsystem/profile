# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# on browser resize...
$(window).resize ->
  moveProgressBar()
  return

$ ->
  # progress
  $progress_block = $('.progress-wrap')

  moveProgressBar = (object_each) ->
    getPercent = object_each.data('progress-percent') / 100
    getProgressWrapWidth = object_each.width()
    progressTotal = getPercent * getProgressWrapWidth
    animationLength = 2500
    object_each.find('.progress-bar').animate { left: progressTotal }, animationLength

  $progress_block.each ->
    moveProgressBar $(this)

  # timeline
  $timeline_block = $('.cd-timeline-block')

  $timeline_block.each ->
    if $(this).offset().top > $(window).scrollTop() + $(window).height() * 0.75
      $(this).find('.cd-timeline-img, .cd-timeline-content').addClass('is-hidden')

  # #on scolling, show/animate timeline blocks when enter the viewport
  # $(window).on 'scroll', ->
  #   $timeline_block.each ->
  #     if $(this).offset().top <= $(window).scrollTop() + $(window).height() * 0.75 and $(this).find('.cd-timeline-img').hasClass('is-hidden')
  #       $(this).find('.cd-timeline-img, .cd-timeline-content').removeClass('is-hidden').addClass('bounce-in')