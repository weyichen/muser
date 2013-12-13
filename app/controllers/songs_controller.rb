class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to songs_path
    else
      render 'new'
    end
  end
  
  def edit
  end

  def show
  end
end
