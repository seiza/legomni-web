class Series < ActiveRecord::Base
  attr_accessible :color, :number, :url
  has_many :figures
end
