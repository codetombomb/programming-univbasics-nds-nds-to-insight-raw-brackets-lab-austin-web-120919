$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"



# Thought process:  Goal- return Hash with name and gross movies value total.
#
# 1) Access loop for director names and reference inside of hash:
# director_totals = {director_name => container}
# at the end of the method.
#
# 2) Start looping through movies, grab all values for worldwide_gross on each movie
# inside each director_name. Add them to a container to hold until all have been called
# and add the final total along with its associated value inside of the newly established hash
# director_totals = {director_name => container}
#
# 3)Access the next directors name via the ((while row_index < directors_database.length do))
# loop and repeat the process til the end. Since the loops will grab new directors
# names and values, when called upon to go into director_totals = {director_name => container},
# the new pair will be created each time.
#
# ------  I think I have all of the pieces but cant quite get there. -------



def directors_totals(nds)
  row_index = 0
director_totals = {}
    while row_index < directors_database.length do
      director_name = directors_database[row_index][:name]
        container = 0
      element_index = 0
      while element_index < directors_database[row_index][:movies].length do
        container += directors_database[row_index][:movies][element_index][:worldwide_gross]
      element_index += 1
      end
      director_totals[director_name] = container
        row_index += 1
    end
 director_totals
end

# binding.pry

#=============================================================================



# [{:name=>"Stephen Spielberg",
#   :movies=>
#    [{:title=>"Jaws",
#      :studio=>"Universal",
#      :worldwide_gross=>260000000,
#      :release_year=>1975},
#     {:title=>"Close Encounters of the Third Kind",
#      :studio=>"Columbia",
#      :worldwide_gross=>135189114,
#      :release_year=>1977},
#     {:title=>"Raiders of the Lost Ark",
#      :studio=>"Paramount",
#      :worldwide_gross=>248159971,
#      :release_year=>1981},
#     {:title=>"E.T. the Extra-terrestrial",
#      :studio=>"Universal",
#      :worldwide_gross=>435110554,
#      :release_year=>1982},
#     {:title=>"Schindler's List",
#      :studio=>"Universal",
#      :worldwide_gross=>96898818,
#      :release_year=>1993},
#     {:title=>"Lincoln",
#      :studio=>"Buena Vista",
#      :worldwide_gross=>182207973,
#      :release_year=>2012}]},




# def print_first_directors_movie_titles
# movie_list = directors_database[0][:movies]
# row_index = 0
#   while row_index < movie_list.length do
#     puts movie_list[row_index][:title]
#       row_index += 1
#

# Expecting these totals
# "Stephen Spielberg"=>1357566430,
# "Russo Brothers"=>2281002470,
# "James Cameron"=>2571020373,
# "Spike Lee"=>256624217,
# "Wachowski Siblings"=>806180282,
# "Robert Zemeckis"=>1273838385,
# "Quentin Tarantino"=>662738268,
# "Martin Scorsese"=>636812242,
# "Francis Ford Coppola"=>509719258
# }
