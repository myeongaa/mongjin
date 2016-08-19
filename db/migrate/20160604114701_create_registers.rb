class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.integer :subject_id
      t.integer :professor_id
      t.timestamps null: false
    end
  end
end
