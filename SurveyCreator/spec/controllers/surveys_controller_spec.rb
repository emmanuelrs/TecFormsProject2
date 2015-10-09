require 'rails_helper'

RSpec.describe SurveysController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
#  describe "GET #show" do
#    it "assigns the requested survey as @survey" do
#      survey = Survey.create! valid_attributes
#      get :show, {:id => survey.to_param}, valid_session
#      expect(assigns(:survey)).to eq(survey)
#    end
#  end

describe "GET #new" do
    it "assigns a new survey as @survey" do
      get :new, {}, valid_session
      expect(assigns(:survey)).to be_a_new(Survey)
    end
  end
end
