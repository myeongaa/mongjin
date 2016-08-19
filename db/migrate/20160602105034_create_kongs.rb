class CreateKongs < ActiveRecord::Migration
  def change
    create_table :kongs do |t|
      t.integer :professor_id
      t.timestamps null: false
    end
  end
end
