require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Attributes' do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :email }
    it { is_expected.to respond_to :password_digest }
    it { is_expected.to respond_to :created_at }
    it { is_expected.to respond_to :updated_at }
  end

  describe 'Database' do
    it { is_expected.to have_db_column 'name' }
    it { is_expected.to have_db_column 'email' }
    it { is_expected.to have_db_column 'password_digest' }
    it { is_expected.to have_db_column 'created_at' }
    it { is_expected.to have_db_column 'updated_at' }
  end

  describe 'Validations' do
    it { is_expected.to has_secure_password }
    it { is_expected.to validate_presence_of :email }
   #  it { is_expected.to validate_uniqueness_of :email }
   #  it { is_expected.to validate_confirmation_of :email }
    it { is_expected.to validate_presence_of :password }
  end

end
