class Reply < ActiveRecord::Base
  field :reply, :type => String
  belongs_to :property
  
end
