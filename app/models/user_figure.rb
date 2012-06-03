class UserFigure < ActiveRecord::Base
  attr_accessible :count, :first_at, :wanted, :give, :user_id, :figure_code
  belongs_to :user
  belongs_to :figure

end
