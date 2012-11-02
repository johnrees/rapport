jQuery ->
  $('div[data-valign] *').css('color','#FFF')

  counter = 0
  $('body.work_index .cover').hide().each ->
    $(this).delay(counter * 200).fadeIn('slow')
    counter++

  $('body #content').hide().fadeIn()

  counter = 0
  $('body.clients_index .client').hide().each ->
    $(this).delay(counter * 50).fadeIn('slow')
    counter++

$(window).load ->

  $('div[data-valign]').each ->
    parentHeight = parseInt($(this).parent().height())
    thisHeight = parseInt($(this).height())
    if $(this).data('valign') == 'bottom'
      $(this).css('margin-top', parentHeight - thisHeight)
    else if $(this).data('valign') == 'middle'
      $(this).css('margin-top', parentHeight/2 - thisHeight/2)
    else
      $(this).css('margin-top', 0)

    $(this).find('*').css('color','#0083C8')
