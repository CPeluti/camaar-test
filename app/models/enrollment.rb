class Enrollment < ApplicationRecord
    belongs_to :user
    belongs_to :subject_class
end
