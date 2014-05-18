class Comment < ActiveRecord::Base
  
    belongs_to :user
  	validates :user_id, presence: true
    validates :description, presence: true, length: { maximum: 140 }
  	default_scope -> { order('created_at DESC') }
	translates :title, :description
end

