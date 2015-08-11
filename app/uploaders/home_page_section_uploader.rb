class HomePageSectionUploader < Optimadmin::ImageUploader

  version :square do
    process resize_to_fill: [250, 250]
  end

  version :potrait do
    process resize_to_fill: [250, 250]
  end

  version :horizontal do
    process resize_to_fill: [250, 250]
  end

end
