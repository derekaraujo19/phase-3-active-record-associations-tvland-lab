class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    actor_list = self.characters.map do |charac|
      charac.actor.full_name
    end
    actor_list
  end

end




#actors_list: Define a method in the Show class called #actors_list that returns an Array of the full names of each actor associated with a show. Remember, a show should have many actors through characters. Hint: it may help to use another association macro to access the actors for the show.
