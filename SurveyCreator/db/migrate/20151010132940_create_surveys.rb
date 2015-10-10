class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :questionN

      t.timestamps null: false
    end
  end
end
