class Device < ActiveRecord::Base
  attr_accessible :name, :udid, :user_id
  belongs_to :user
end
