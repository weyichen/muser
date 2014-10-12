include AutoHtml

class SongsController < ApplicationController
  respond_to :json, :html

  def index
    @songs = Song.all
    @song = Song.new
  end

  def new

  end

  def create
    @song = Song.new(params[:song])

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully added!' }
        format.js {}
        format.json { render json: @song, status: :created, location: @song }

        # parse YouTube link to embed HTML code
        embed = auto_html(@song.ytURL) {youtube(:width => 560, :height => 315)}
        @song.update_attribute(:ytEmbed, embed)
      else
        format.html { render action: "new" }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
        
   # if @song.save
      # mark song as created by the current user
    #  @song.update_attribute(:user, current_user)
     # @song.update_attribute(:username, current_user[:name])
    
      #redirect_to songs_path
    #else
      #render 'new'
   # end
    
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
    @song = Song.find(params[:id])
  end
  
  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  def clear
    Song.delete_all
  end

end
