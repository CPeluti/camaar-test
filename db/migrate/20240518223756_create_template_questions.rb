class CreateTemplateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :template_questions do |t|
      t.integer :template_id 
      t.string :question_type
      t.string :question_text

      t.timestamps
    end
  end
end
