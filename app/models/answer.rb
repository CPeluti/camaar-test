class Answer < ApplicationRecord
    belongs_to :form
    belongs_to :template_question
end
