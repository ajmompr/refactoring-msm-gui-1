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

    # Return ActiveRecord relation containing matching movies
    return matching_movies
  end
end
