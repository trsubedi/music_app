require 'rails_helper'


RSpec.describe PlaylistsController, type: :controller do
   let(:playlist) {Playlist.new}

   # describe '#new' do
   #    before { get :new }
   #
   #    it 'returns 200' do
   #       expect(response).to be_success
   #    end
   #
   #    #  it 'renders playlists/new' do
   #    #     expect(response).to render_template 'playlists/new'
   #    #  end
   #
   #    it 'assigns @playlist' do
   #       # assigns(:playlist) evaluates to @playlist
   #       expect(assigns(:playlist)).to be_a Playlist
   #       expect(assigns(:playlist)).not_to be_persisted
   #    end
   # end

   describe "GET #index" do
      it "responds successfully with an HTTP 200 status code" do
         get :index
         expect(response).to be_success
         expect(response).to have_http_status(200)
      end

      it "renders the index template" do
         get :index
         expect(response).to render_template("index")
      end

      # it "loads all of the posts into @posts" do
      #    post1, post2 = Post.create!, Post.create!
      #    get :index
      #
      #    expect(assigns(:posts)).to match_array([post1, post2])
      # end
   end

end
