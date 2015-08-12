class GalleryImageUploader < Optimadmin::ImageUploader

  version :square do
    process resize_to_fill: [185, 185]
  end

  version :potrait do
    process resize_to_fill: [212, 181]
  end

  version :horizontal do
    process resize_to_fill: [212, 146]
  end

end
