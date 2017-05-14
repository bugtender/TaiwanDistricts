(($) ->
  $.fn.taiwan_districts = () ->
    @each ->
      selects = $(@).find('.city-select')
      lang = $(@).find('.city-select').attr('lang')
      selects.change ->
        $this = $(@)
        next_selects = selects.slice(selects.index(@) + 1) # empty all children city
        $("option:gt(0)", next_selects).remove()
        if next_selects.first()[0] and $this.val() # init next child
          $.get "/taiwan_districts/#{$(@).val()}?lang=#{lang}", (data) ->
            next_selects.first()[0].options.add(new Option(option[0], option[1])) for option in data

  $ ->
    $('.city-group').taiwan_districts()
)(jQuery)
