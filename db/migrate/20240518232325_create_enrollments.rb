class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments do |t|
      t.belongs_to :subject_class
      t.string :role
      t.belongs_to :user

      t.timestamps
    end
  end
end
