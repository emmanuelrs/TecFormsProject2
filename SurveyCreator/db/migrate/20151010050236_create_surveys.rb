class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :questions

      t.timestamps null: false
    end
  end
end
