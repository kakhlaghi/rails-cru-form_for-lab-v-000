class SongsController < ApplicationController
  
  def new
    @song = Song.new
  end
  
  def show
    @song = Song.find(params[:id])
  end
  
  def create
    @song = Song.new(params.require(:song).permit(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit 
    @artist = Artist.find(params[:id])
  end
  
  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end
  
end
