# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    # Retrieve director ID
    my_id = self.id
    # Retrieve movie relation where director_id matches
    matching_movies = Movie.where({ :director_id => my_id})
    # return an ActiveRecord relation containing the matching movies
    return matching_movies
  end
end
