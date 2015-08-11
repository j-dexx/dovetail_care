class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.integer :position
      t.text :summary, null: false
      t.boolean :display, default: true

      t.timestamps null: false
    end
  end
end
