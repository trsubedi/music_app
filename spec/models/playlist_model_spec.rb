require 'rails_helper'

RSpec.describe Playlist, type: :model do

   describe 'Attributes' do
      it { is_expected.to respond_to :title }
      it { is_expected.to respond_to :genre }
      it { is_expected.to respond_to :names }
      it { is_expected.to respond_to :duration }
      it { is_expected.to respond_to :tracks }
      it { is_expected.to respond_to :mood }
      it { is_expected.to respond_to :created_by }
      it { is_expected.to respond_to :created_at }
      it { is_expected.to respond_to :updated_at }
   end


   describe 'Database' do
      it { is_expected.to have_db_column :title }
      it { is_expected.to have_db_column :genre }
      it { is_expected.to have_db_column :names }
      it { is_expected.to have_db_column :duration }
      it { is_expected.to have_db_column :tracks }
      it { is_expected.to have_db_column :mood }
      it { is_expected.to have_db_column :created_by }
      it { is_expected.to have_db_column :created_at }
      it { is_expected.to have_db_column :updated_at }
   end

end
