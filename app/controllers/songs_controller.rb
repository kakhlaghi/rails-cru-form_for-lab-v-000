class SongsController < ApplicationController
  
  def new
    @song = Song.new
  end
  
  def show
    @song = Song.find(params[:id])
  end
  
  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit 
    @song = Song.find(params[:id])
  end
  
  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end
  
end
