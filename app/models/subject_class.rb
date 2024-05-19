class SubjectClass < ApplicationRecord
    belongs_to :subject
    has_many :users, through: :enrollments
end
