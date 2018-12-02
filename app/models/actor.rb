require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name + " " +last_name
  end

  def list_roles
    characters.all.collect do |char|
      a = char.name + " - " + Show.find_by(id:char.show_id).name
    end
  end
end
