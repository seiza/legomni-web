class Figure < ActiveRecord::Base
  attr_accessible :creativity, :description, :name, :number, :series_id, :slogan, :speed, :strength, :url
  belongs_to :series
end
