#The CLI Controller, responsible for user interactions, welcome the user and takes user input.

class BestMovies::CLI 
  
  def call 
    list_movies
    menu
  end
  
  def list_movies
    puts "Best Movies of All Time:"
    puts <<-DOC
      1. Black Panter, Rated: PG, Genre: Action & Adventure, Drama, Science Fiction & Fantasy
      2. Lady Bird, Rated: R, Genre: Comedy, Drama"
    DOC
  end
  
  def menu
    puts "Please select a number of the movies that you would like to see;"
    puts <<-DOC
      1. All Top 100 movies.
      2. Top movies sorted by Genre
      3. Top movies sorted by Rating
      DOC
      
      input = gets.chomp 
      
      case input
        when "1" 
          puts "needs scrap all of the movies from RT"
        when "2" 
          puts "Please select a Genre"
          puts "Action & Adventure"
          puts "Comedy"
          puts "Drama"
          puts "Fantasy"
          puts "Science Fiction"
            choice = gets.strip
              case choice 
                when "Action & Adventure"
                  puts "list of all action and adventure movies from the 100 list"
                when "Comedy"
                  puts "list of all Comedy movies from the 100 list"
                when "Drama"
                  puts "list of all drama movies from the 100 list"
                when "Fantasy"
                  puts "list of all Fantasy movies from the 100 list"
                when "Science Fiction"
                  puts "list of all Science Fiction movies from the 100 list"
              end
        when "3" 
          puts "Please select a rating"
          puts "G"
          puts "PG"
          puts "PG-13"
          puts "NC-17"
          puts "R"
          
          selection = gets.chomp
          case selection
            when 'G'
              puts "Lists all of the G rated top 100 movies"
            when 'PG'
              puts "Lists all of the PG rated top 100 movies"
            when 'PG-13'
              puts "Lists all of the PG-13 rated top 100 movies"
            when 'NC-17'
              puts "Lists all of the NC-17 rated top 100 movies"
            when 'R'
              puts "Lists all of the R rated top 100 movies"
            end
          end
        end
  
end

