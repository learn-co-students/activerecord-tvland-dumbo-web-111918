class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

#already built by ActiveRecord
#show.build_network(:call_letters => "NBC")

end
