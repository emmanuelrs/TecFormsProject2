class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.integer :user
      t.datetime :time

      t.timestamps null: false
    end
  end
end
