class User < ApplicationRecord
    has_many :subject_classes, through: :enrollments
end
