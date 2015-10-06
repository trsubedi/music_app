require 'rails_helper'


RSpec.describe UsersController, type: :controller do
   let(:user) {User.new}

   describe '#new' do
      before { get :new }

      it 'returns 200' do
         expect(response).to be_success
      end

      #  it 'renders users/new' do
      #     expect(response).to render_template 'users/new'
      #  end

      it 'assigns @playlist' do
         # assigns(:user) evaluates to @user
         expect(assigns(:user)).to be_a User
         expect(assigns(:user)).not_to be_persisted
      end
   end
end
