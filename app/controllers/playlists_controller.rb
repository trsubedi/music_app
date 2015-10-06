class PlaylistsController < ApplicationController
	require 'SoundCloud'

	def new
		@playlist = Playlist.new
	end

	def index
    @playlists = Playlist.all
    render :index
   end

   def create
    playlist_params = params.require(:playlist).permit('tracks','names', 'title', :mood)
    p params
    p "CREATING A playlist #{playlist_params}"
    @@playlist = Playlist.create(playlist_params)

    redirect_to "/playlists/"

   end

   def show
      id = params[:id]
      @playlist = Playlist.find(id)

      render :show
    end

  def displayarr
    @urls = url_toArray
    @names = name_toArray
  end

  def renderPlaylists
    @playlists = Playlist.all
    

  end

end
