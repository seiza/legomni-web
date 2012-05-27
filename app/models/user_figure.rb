class UserFigure < ActiveRecord::Base
  attr_accessible :count, :first_at, :wanted, :user_id, :figure_id
  belongs_to :user
  has_one :figure
end
