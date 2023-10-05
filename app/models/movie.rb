# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    # Step 1: Return the receiving movie's director_id
    my_director_id = self.director_id
    # Step 2: Return ActiveRecord::Relation containing records from the directors table that match receiving movie's director_id
    matching_directors = Director.where({ :id => my_director_id})
    # Step 3: Return the director itself (or an INSTANCE of director representing a row in director table)
    the_director = matching_directors.at(0)
    return the_director
  end

  def characters
    
  end 
end
