class User < ActiveRecord::Base
  enum status: [:single, :married, :douchebag]
end
