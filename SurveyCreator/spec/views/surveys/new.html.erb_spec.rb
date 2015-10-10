require 'rails_helper'

RSpec.describe "surveys/new", type: :view do
  before(:each) do
    assign(:survey, Survey.new(
      :questionN => "MyText"
    ))
  end

  it "renders new survey form" do
    render

    assert_select "form[action=?][method=?]", surveys_path, "post" do

      assert_select "textarea#survey_questionN[name=?]", "survey[questionN]"
    end
  end
end