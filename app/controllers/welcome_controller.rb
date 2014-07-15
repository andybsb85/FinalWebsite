class WelcomeController < ApplicationController
  def index
     @locations = Location.order(:title)
   end
 	
 	def help
  end

   def whats
  end

   def about
  end

   def contact
  end

end
