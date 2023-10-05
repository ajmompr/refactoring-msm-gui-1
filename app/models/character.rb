# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    # Retrieve character's movie ID
    m_id = self.movie_id
    # Retrieve ActiveRecord relation with matching movies
    matching_movies = Movie.where({ :id => m_id })
    # Return the movie
    the_movie = matching_movies.at(0)
    return the_movie
  end

  def actor
    # Retrieve character's actor ID
    a_id = self.actor_id
    # Retrieve ActiveRecord relation with matching actor
    matching_actor = Actor.where({ :id => a_id})
    # Pop out the actor 
    the_actor = matching_actor.at(0)
    # Return the actor 
    return the_actor
  end 
end
