class CreateForms < ActiveRecord::Migration[7.1]
  def change
    create_table :forms do |t|
      t.belongs_to :template
      t.belongs_to :subject_class

      t.timestamps
    end
  end
end
