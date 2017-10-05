$ ->
  if $('.pagination').length > 0
    $(window).on 'scroll', ->
      more_posts_url = $('.pagination .next_page').attr('href')
      if more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
            $('.pagination').html('<div class="loader"></div>')
            $.getScript more_posts_url
    $(window).scroll()