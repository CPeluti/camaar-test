class CreateSubjectClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :subject_classes do |t|
      t.belongs_to :subject
      t.string :semester

      t.timestamps
    end
  end
end
