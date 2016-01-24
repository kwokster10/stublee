require 'rails_helper'

RSpec.describe RatingsController, :type => :controller do
  describe "GET #index" do
    let(:rating1) { create(:draft_rating) }
    let(:rating2) { create(:published_rating) }

    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    context 'for not logged in users' do
      it 'displays only published ratings' do
        get :index
        expect(assigns(:ratings)).to eq([rating2])
      end
    end

    context 'for non-admin users' do
      login_user

      it 'displays only published ratings' do
        get :index
        expect(assigns(:ratings)).to eq([rating2])
      end
    end

    context 'for admin user' do
      login_admin

      it 'displays all ratings' do
        get :index
        expect(assigns(:ratings)).to eq([rating1, rating2])
      end
    end
  end
end
