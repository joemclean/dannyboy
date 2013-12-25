class Project < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  def image_file_name
    read_attribute :image
  end

end
