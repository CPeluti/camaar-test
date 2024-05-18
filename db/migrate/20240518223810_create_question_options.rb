class CreateQuestionOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :question_options do |t|
      t.string :option_text

      t.timestamps
    end
  end
end
