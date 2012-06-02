class Series < ActiveRecord::Base
  attr_accessible :series_code, :index, :color, :url
  self.primary_key = "series_code"
  has_many :figures,
           :foreign_key => :series_code,
           #:conditions => { :series_code => series_code }
           :finder_sql => proc { "SELECT * FROM figures  WHERE figures.series_code = \'#{self.series_code}\'" }
end
