class Actor < ActiveRecord::Base
 has_many :characters
 has_many :shows, through: :characters

  def full_name
   "#{first_name} #{last_name}"
  end

  #characters is join class so can call
  #self.characters. Then can iterate through join to get
  #character.name and also character.show.name (the show's name)
  def list_roles
  	self.characters.map do |character|
  		"#{character.name} - #{character.show.name}"
  	end
  end
end
