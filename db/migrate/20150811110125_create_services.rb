class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :position
      t.string :title
      t.text :summary
      t.boolean :display

      t.timestamps null: false
    end
  end
end
