class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  #has_many :shows
  #has_many :networks, through: :shows

  def say_that_thing_you_say
  	"#{self.name} always says: #{self.catchphrase}"
  end

#already in ActiveRecord. As a character can know about its show
#thus it can know about its shows names.
#And the show can call build network to learn about its network and
#network call letters as they both have many
#character can chain-build associations to which it belongs
#malcolm.build_show(:name => "Firefly").build_network(:call_letters => "Fox")


end
