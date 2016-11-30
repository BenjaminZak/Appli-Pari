class HomeController < ApplicationController
	def index
		@matchs = Match.all
		@paris = Pari.all
	end

	def private
		@user = User.find(params[:id])
	end
end
