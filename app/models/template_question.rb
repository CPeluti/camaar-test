class TemplateQuestion < ApplicationRecord
    belongs_to :template
    has_many :question_options
end
