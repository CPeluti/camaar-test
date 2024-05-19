class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.belongs_to :form
      t.belongs_to :template_question
      t.string :answer

      t.timestamps
    end
  end
end
