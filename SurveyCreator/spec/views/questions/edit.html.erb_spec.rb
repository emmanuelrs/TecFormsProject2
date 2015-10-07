require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :question_statement => "MyString",
      :survey => nil
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_question_statement[name=?]", "question[question_statement]"

      assert_select "input#question_survey_id[name=?]", "question[survey_id]"
    end
  end
end
