class Subscription < ActiveRecord::Base
  enum type: [:one_lession, :two_lessions, :three_lessions]
end
