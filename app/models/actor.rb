# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    # Retrieve actor ID
    the_id = self.id

    # Retrieve movie relation where actor_id matches
    matching_characters = Character.where({ :actor_id => the_id})
    # Return ActiveRecord relation containing matching characters
    return matching_characters
  end
end
