class Project < ActiveRecord::Base

  has_attached_file :image, s3_credentials: S3_CREDENTIALS

end
