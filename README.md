#Flight Flicks


##What is it?

People love to watch movies on flights. It's a great way to pass the time, but what do you do when the movie ends before the flight is over? You either flip through the corny airplane magazines, start on another movie that you won't finish, or worse, spend the rest of your time searching for a movie to watch! Flight Flicks is your solution. Flight Flicks provides customized movie recommendations that match your genre preference and flight time. For longer flights, you will get multiple movie recommendations that will fill up the allotted flight time. The goal is to keep you entertained the whole time without leaving you hangin' halfway through your movie. Using Flight Flicks, your movie will end when the wheels hit the run way!

##Developers
###Future Features
Flight flicks is still under development. Once fulling functional the 'movie/show' route will provide information as follows:
[{movie: "Horrible Bosses", runtime: 180}, {movie: "Last Vegas", runtime: 178}]. Giving the user an array of movies to pick from that will fulfill their time. Another feature will be the 'travel/info' which will allow the user to choose other modes of transportation such as car and train.

###How to use Current Features:
* Input the flight origin and destination and Flight Flicks gets the flight duration using the Rio to Rome API.

* Input movie genre and Flight Flicks gets a list of movies within that genre that most closely match your flight time using the TMDb API.

####Routes:

Flight Flicks API has the following routes:
  * 'travel/info'
    This route directs you to the flights/index which requires params of origin and destination.
    It will show all travel options between the two destinations.

  * `flights/show`
    This route requires params of origin and destination. It will provide the location information as
    well as flight time duration in minutes.

  * 'genres/show'
    This route provides a genre id using a genre param.

  * `movies_genres/index`
    This route provides a list of movie genres and ids using a genre param.

  * `movies/index`
    This route requires params of movie id which is provided the movies_genres index. It provides a movie with all of the information about that movies including runtime using a movie param.

  * `movies/show`
    This route requires params of origin, destination, and movie id. It will show what the movie title is and if the movie is a good pick for your travel time.
