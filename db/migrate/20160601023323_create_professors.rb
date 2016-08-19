class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      
      t.string :name
      t.string :email
      t.string :phone
      t.string :bel
      t.integer :professor_id
      t.timestamps null: false
    end
  end
end
