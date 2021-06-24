module Movie

  def movie_name()
    puts "Name the movie you watched"
    @name = gets
  end
  
  def movie_type()
    puts "Which type of movie you watched?" 
    @type = gets
  end

  def movie_ratings()
    puts "what rating will you give to the movie you watched?"
    @rating = gets
  end
  
end

class Main
  @@total_movie_count = 0
  
  include Movie

  def self.movie_count
    @@total_movie_count += 1
  end

  def survey_form
    puts "Movie name: #{@name}"
    puts "Movie type: #{@type}"
    puts "Movie name: #{@rating}"
    puts "Count: #{@@total_movie_count}"
  end

  def movie_survey
    puts "Do you want to give a survey? YES or NO"

    while gets.downcase.chomp == 'yes'
      movie_name
      movie_type
      movie_ratings
      Main.movie_count
      survey_form 
      puts "Do you want to give a survey? YES or NO"
    end
  end

  def survey_end
    puts "Thank you for your time"
  end
end

movie = Main.new
movie.movie_survey
movie.survey_end