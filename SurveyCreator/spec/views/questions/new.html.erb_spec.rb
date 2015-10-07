require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :question_statement => "MyString",
      :survey => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_question_statement[name=?]", "question[question_statement]"

      assert_select "input#question_survey_id[name=?]", "question[survey_id]"
    end
  end
end
