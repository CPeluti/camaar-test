class FormsController < ApplicationController
  def index
    t = Template.create!(name: "teste")
    question = t.template_questions.create!(question_type: "text", question_text: "teste de pergunta")
    @templates = Template.all

  end
end
