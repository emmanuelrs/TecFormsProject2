require 'rails_helper'

RSpec.describe "surveys/new", type: :view do
  before(:each) do
    assign(:survey, Survey.new(
      :name => "MyString",
      :user => 1
    ))
  end

  it "renders new survey form" do
    render

    assert_select "form[action=?][method=?]", surveys_path, "post" do

      assert_select "input#survey_name[name=?]", "survey[name]"

      assert_select "input#survey_user[name=?]", "survey[user]"
    end
  end
end
