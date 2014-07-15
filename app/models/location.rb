class Location < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
  has_many :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item
  
  private
  #ensure that there are no line items referencing this location
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
