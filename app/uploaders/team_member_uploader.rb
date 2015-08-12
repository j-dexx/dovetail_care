class TeamMemberUploader < Optimadmin::ImageUploader

  version :show do
    process resize_to_fill: [176, 176]
  end

end
