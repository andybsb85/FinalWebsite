class Comment < ActiveRecord::Base
	translates :title, :description
end

