class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :survey
      t.references :student, index: true

      t.timestamps
    end
  end
end
