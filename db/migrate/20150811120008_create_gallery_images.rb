class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :position
      t.string :title
      t.string :image, null: false
      t.boolean :display, default: true
      t.belongs_to :home_page_section

      t.timestamps null: false
    end
  end
end
