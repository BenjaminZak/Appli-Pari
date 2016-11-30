class ParisController < ApplicationController
  def index

  end

  def new
  	@pari = Pari.new
  	@matchs = Match.all
  end

  def create
  	@pari = Pari.new(pari_params)
  	@pari.user = current_user
  	if @pari.save
  		redirect_to :index
  	else
  		redirect_to :back
  	end
  end

  def show

  end

  private

  def pari_params
  	params.require(:pari).permit(:choice, :match_id)
  end
end
