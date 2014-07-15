class Plan < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  
  def add_location(location_id)
    current_item = line_items.find_by(location_id: location_id)
    if current_item
      current_item = current_item
    else
      current_item = line_items.build(location_id: location_id)
    end
    current_item
  end
end
