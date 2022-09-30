require "rails_helper"

describe "Users", type: :request do
  describe "GET /users" do
    context "when user is not logged in" do
      it "redirects to login page" do
        get users_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context "when user is logged in" do
      let(:user) { create(:user) }

      before do
        sign_in user
      end

      it "returns http success" do
        get users_path
        expect(response).to have_http_status(:ok)
      end

      it "renders the index template" do
        get users_path
        expect(response).to render_template(:index)
      end

      it "loads all of the users" do
        user_1, user_2 = create_list(:user, 2)
        get users_path
        expect(assigns(:users)).to match_array([user, user_1, user_2])
      end
    end
  end
end
