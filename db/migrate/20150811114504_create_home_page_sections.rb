class CreateHomePageSections < ActiveRecord::Migration
  def change
    create_table :home_page_sections do |t|
      t.string :area
      t.string :title
      t.string :image
      t.text :content

      t.timestamps null: false
    end
  end
end
