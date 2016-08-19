class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :sname
      t.string :snumber
      t.integer :subject_id
      t.integer :p_id
      t.timestamps null: false
    end
  end
end
