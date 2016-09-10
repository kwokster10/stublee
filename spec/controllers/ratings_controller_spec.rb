require 'rails_helper'

RSpec.describe RatingsController, :type => :controller do
  describe 'GET #index' do
    let(:rating1) { create(:draft_rating) }
    let(:rating2) { create(:published_rating) }
    let(:subject) { get :index }

    it 'returns http success' do
      subject
      expect(response).to have_http_status(:success)
    end

    context 'for not logged in users' do
      it 'displays only published ratings' do
        subject
        expect(assigns(:ratings)).to eq([rating2])
      end

      it 'does not display the form' do
        subject
        expect(response).to_not render_template(partial: 'form')
      end
    end

    context 'for non-admin users' do
      login_user

      it 'displays only published ratings' do
        subject
        expect(assigns(:ratings)).to eq([rating2])
      end
    end

    context 'for admin user' do
      login_admin

      it 'displays all ratings' do
        subject
        expect(assigns(:ratings)).to eq([rating1, rating2])
      end

      it 'does display the form' do
        subject
        expect(response).to render_template(partial: 'form')
      end
    end
  end

  describe 'POST #create' do
    context 'when user is authorized' do
      it '' do

      end
    end
  end
end
