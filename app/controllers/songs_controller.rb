include AutoHtml

class SongsController < ApplicationController
  respond_to :json, :html

  def index
    @songs = Song.all
    @rating5 = Song.rating5
    @rating42 = Song.rating42
    @rating1 = Song.rating1
  end

  def new
    @songs = Song.all
    @rating5 = Song.rating5
    @rating42 = Song.rating42
    @rating1 = Song.rating1
    
    @song = Song.new
  end

  def create
    @song = Song.create(params[:song])
    
    @songs = Song.all
    @rating5 = Song.rating5
    @rating42 = Song.rating42
    @rating1 = Song.rating1
    
    if @song.save
      # mark song as created by the current user
      @song.update_attribute(:user, current_user)
      @song.update_attribute(:username, current_user[:name])
    
      # parse YouTube link to embed HTML code
      embed = auto_html(@song.ytURL) {youtube(:width => 560, :height => 315)}
      @song.update_attribute(:ytEmbed, embed)
    
      redirect_to songs_path
    else
      render 'new'
    end
    
  end
  
  def edit
    @songs = Song.all
    @rating5 = Song.rating5
    @rating42 = Song.rating42
    @rating1 = Song.rating1
    
    @song = Song.find(params[:id])
  end
  
  def update
    @song = Song.find(params[:id])
    
    @songs = Song.all
    @rating5 = Song.rating5
    @rating42 = Song.rating42
    @rating1 = Song.rating1
    
    if @song.update_attributes(params[:song])
      # mark song as created by the current user
      @song.update_attribute(:user, current_user)
      @song.update_attribute(:username, current_user[:name])
    
      # parse YouTube link to embed HTML code
      embed = auto_html(@song.ytURL) {youtube(:width => 560, :height => 315)}
      @song.update_attribute(:ytEmbed, embed)
    
      redirect_to songs_path
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end
end
