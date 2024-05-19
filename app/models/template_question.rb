class TemplateQuestion < ApplicationRecord
    belongs_to :template
    has_many :question_options
    has_many :forms, through: :answers
end
