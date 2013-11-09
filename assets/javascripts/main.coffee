$(document).ready ->

  # Advanced search animation.
  $('#advanced-button').click ->
    adv = $('#advanced')
    if adv.is('[visible]')
      adv.stop().animate({ height: '0', opacity: '0', 'margin-bottom': '0' }, 1000, -> adv.css('overflow', ''); adv.css('display', 'none'))
      adv.removeAttr('visible')
    else
      adv.css('display', 'block')
      adv.stop().animate({ height: '150px', opacity: '1', 'margin-bottom': '20px' }, 1000, -> adv.css('overflow', ''))
      adv.attr('visible', '')

  # Better checkboxes.
  $('input').iCheck({
    checkboxClass: 'icheckbox_square-grey',
    radioClass: 'iradio_square-grey',
    increaseArea: '20%'
  })

  # Better dropdowns.
  $('.advanced-select').dropkick({
    theme: 'black',
    change: (value, label) ->
      $(this).dropkick('black', value)
  })
