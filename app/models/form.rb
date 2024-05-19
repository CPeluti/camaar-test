class Form < ApplicationRecord
    has_many :template_questions, through: :answers
end
