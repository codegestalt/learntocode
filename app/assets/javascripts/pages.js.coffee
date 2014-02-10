$ ->
  $(".contact .annotation").hide()

  $(".contact div").hover ->
    $(this).find(".annotation").toggle()
