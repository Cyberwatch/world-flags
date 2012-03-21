module WorldFlags
  module Rails
    class Engine < ::Rails::Engine
    	

    	initializer "setup for rails" do
    		puts "WorldFlags engine loaded"
    		WorldFlags::Rails::Engine.add_view_ext
      end

    	def self.add_view_ext
    		ActionView::Base.send :include, WorldFlagsHelper
    	end

			def self.add_controller_ext
      	# ActionController::Base.send(:include, UiControllerExtensions)
      end	
    end
  end
end
