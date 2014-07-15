class PlacesListController < ApplicationController
  before_action :set_plan
  include CurrentPlan
  
  def index
    @locations = Location.order(:title)
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
    marker.lat location.latitude
    marker.lng location.longitude
      
    end
  end
     
end
