class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  	self.first_name + " " + self.last_name
  end

  def list_roles
  	characters.all.map do |char|
      a = char.name + " - " + Show.find_by(id:char.show_id).name
    end
  end
end