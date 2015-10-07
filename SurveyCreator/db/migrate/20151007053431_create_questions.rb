class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_statement
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
