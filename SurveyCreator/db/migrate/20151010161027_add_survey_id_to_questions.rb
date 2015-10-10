class AddSurveyIdToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :survey, index: true, foreign_key: true
  end
end
