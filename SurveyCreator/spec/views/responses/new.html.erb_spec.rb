require 'rails_helper'

RSpec.describe "responses/new", type: :view do
  before(:each) do
    assign(:response, Response.new(
      :user => nil,
      :answer => nil
    ))
  end

  it "renders new response form" do
    render

    assert_select "form[action=?][method=?]", responses_path, "post" do

      assert_select "input#response_user_id[name=?]", "response[user_id]"

      assert_select "input#response_answer_id[name=?]", "response[answer_id]"
    end
  end
end
