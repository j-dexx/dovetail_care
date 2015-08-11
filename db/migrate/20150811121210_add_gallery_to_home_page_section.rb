class AddGalleryToHomePageSection < ActiveRecord::Migration
  def change
    add_column :home_page_sections, :has_gallery, :boolean
  end
end
