class Teacher < ActiveRecord::Base
  enum gender: [:male, :female]
end
