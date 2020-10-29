class PagesController < ApplicationController

	def accueil
		@potins = Potin.all
	end
	
	def new_gossip
		
	end

	def create_gossip
		@gossip = Potin.new
		@gossip.user = User.all.sample
		@gossip.title = params[:title]
		@gossip.content = params[:content]
		if
			@gossip.save
			redirect_to "/"
		else
			redirect_to "/new_gossip"
		end
	end

	def contact
	
	end

    def team

    end
  
    def welcome
  	@name = params[:name]
    end

end
