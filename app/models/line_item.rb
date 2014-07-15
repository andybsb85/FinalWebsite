class LineItem < ActiveRecord::Base
  belongs_to :location
  belongs_to :plan
end
