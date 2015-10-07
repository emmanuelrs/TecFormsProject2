require 'rails_helper'

RSpec.describe "surveys/new", type: :view do
  before(:each) do
    assign(:survey, Survey.new(
      :name => "MyString",
      :availability => 1,
      :user => nil
    ))
  end

  it "renders new survey form" do
    render

    assert_select "form[action=?][method=?]", surveys_path, "post" do

      assert_select "input#survey_name[name=?]", "survey[name]"

      assert_select "input#survey_availability[name=?]", "survey[availability]"

      assert_select "input#survey_user_id[name=?]", "survey[user_id]"
    end
  end
end
