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
    playlist_params = params.require(:playlist).permit('tracks','names')
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

  def toArray

    @playlists = Playlist.all

    @playlists.each do |i|
      @track_url_array = i.tracks.split(",")
      @track_names_array = i.names.split(",")
    end
    # you have two lists above (track url, name)
    # now create a list that puts the two together
    # {track_url, name}

    # @splittedArray.each do |i|
    #   @tupleArray = {@splittedArray =}
    # end

  end


end
