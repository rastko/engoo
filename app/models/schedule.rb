class Schedule < ActiveRecord::Base
  belongs_to :teacher
  has_one :lesson

end
