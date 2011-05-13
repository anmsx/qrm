class Profile
  include Mongoid::Document

  embedded_in :user, :inverse_of => :profile
  
  field :plan
end
