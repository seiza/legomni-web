class User < ActiveRecord::Base
  attr_accessible :city1, :city2, :city3, :email, :firstName, :lastName, :login, :password
end