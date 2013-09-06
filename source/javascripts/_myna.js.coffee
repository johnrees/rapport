jQuery ->

  $.getJSON 'http://myna.herokuapp.com/user_timeline/RapportAgency?count=6', (data) ->
    for tweet in data
      $('.tweet_list').append "<li class='tweet'>#{twttr.txt.autoLink tweet.text}</li>"